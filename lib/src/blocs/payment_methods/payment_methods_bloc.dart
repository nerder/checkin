import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:checkin/src/api/payment_api.dart';
import 'package:checkin/src/blocs/user/bloc.dart';
import 'package:checkin/src/models/payment_method.dart';
import 'package:checkin/src/repositories/payment_method_repository.dart';
import 'package:checkin/src/util/url_launcher_util.dart';
import 'package:flutter/material.dart';

import './bloc.dart';

class PaymentMethodsBloc
    extends Bloc<PaymentMethodsEvent, PaymentMethodsState> {
  final PaymentApi _paymentApi;
  final PaymentMethodRepository _paymentMethodRepository;
  final UrlLauncherUtil _urlLauncherUtil;
  final UserBloc _userBloc;
  StreamSubscription<PaymentMethod> _paymentMethodSub;

  PaymentMethodsBloc({
    @required PaymentApi paymentApi,
    @required PaymentMethodRepository paymentMethodRepository,
    @required UrlLauncherUtil urlLauncherUtil,
    @required UserBloc userBloc,
  })  : assert(paymentApi != null &&
            paymentMethodRepository != null &&
            urlLauncherUtil != null &&
            userBloc != null),
        _paymentApi = paymentApi,
        _paymentMethodRepository = paymentMethodRepository,
        _urlLauncherUtil = urlLauncherUtil,
        _userBloc = userBloc {
    try {
      _userBloc.listen((UserState userState) {
        if (userState is UserSuccess) {
          _paymentMethodSub = _paymentMethodRepository
              .getPaymentMethod(
                  gymId: userState.currentUser.selectedGymId,
                  email: userState.currentUser.email)
              .listen((paymentMethod) {
            add(PaymentMethodUpdated(
                paymentMethod: paymentMethod,
                userEmail: userState.currentUser.email));
          });
        }
      });
    } catch (err) {
      debugPrint("Error while fetching the gym stream $err");
    }
  }

  @override
  PaymentMethodsState get initialState => InitialPaymentMethodsState();

  @override
  Stream<PaymentMethodsState> mapEventToState(
    PaymentMethodsEvent event,
  ) async* {
    if (event is RegisterBankAccount) {
      yield PaymentMethodLoading();
      try {
        var gym = event.gym;

        String clientSecret = await _paymentApi.setupIntent(
            customerEmail: event.billingEmail, gymId: gym.id);

        await _urlLauncherUtil.launchUrl(
            "https://${gym.domain}/sepa.html?pk=${gym.stripePublicKey}&customerEmail=${event.billingEmail}&cs=$clientSecret&nocache=${DateTime.now()}");
      } catch (err) {
        print(err);
      }
    }
    if (event is ChangeBankAccount) {
      yield PaymentMethodLoading();
      try {
        var gym = event.gym;

        String clientSecret = await _paymentApi.setupIntent(
            customerEmail: event.billingEmail,
            gymId: gym.id,
            customerId: event.customerId);

        await _urlLauncherUtil.launchUrl(
            "https://${gym.domain}/sepa.html?pk=${gym.stripePublicKey}&customerEmail=${event.billingEmail}&cs=$clientSecret&nocache=${DateTime.now()}");
      } catch (err) {
        print(err);
      }
    }
    if (event is PaymentMethodUpdated) {
      if (event.paymentMethod != null) {
        yield PaymentMethodLoaded(
          paymentMethod: event.paymentMethod,
        );
      } else {
        yield PaymentMethodEmpty(customerEmail: event.userEmail);
      }
    }
  }

  @override
  Future<void> close() {
    _paymentMethodSub?.cancel();
    return super.close();
  }
}