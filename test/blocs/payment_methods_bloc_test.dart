// @dart=2.9

import 'package:bloc_test/bloc_test.dart';
import 'package:checkin/src/api/payment_api.dart';
import 'package:checkin/src/blocs/payment_methods/bloc.dart';
import 'package:checkin/src/models/gym.dart';
import 'package:checkin/src/models/payment_method.dart';
import 'package:checkin/src/models/user.dart';
import 'package:checkin/src/repositories/payment_method_repository.dart';
import 'package:checkin/src/repositories/user_repository.dart';
import 'package:checkin/src/util/url_launcher_util.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'helper/mock_helper.dart';

class MockPaymentApi extends Mock implements PaymentApi {}

class MockPaymentMethodRepository extends Mock implements PaymentMethodRepository {}

class MockUserRepository extends Mock implements UserRepository {}

class MockUrlLauncherUtil extends Mock implements UrlLauncherUtil {}

void main() {
  group("PaymentMethodBloc", () {
    MockPaymentApi mockPaymentApi;
    MockPaymentMethodRepository mockPaymentMethodRepository;
    MockUrlLauncherUtil mockUrlLauncherUtil;
    MockUserRepository mockUserRepository;

    String fakeEmail = "test@test.com";
    PaymentMethod fakePaymentMethod = PaymentMethod(
      customerId: "cus_123",
      lastFourDigits: "1234",
      billingEmail: fakeEmail,
      country: "ES",
    );
    String fakeGymId = "testGym";
    Gym testGym = Gym(
      id: fakeGymId,
      name: "Test gym",
      paymentAppDomain: "test-app",
      stripePublicKey: "test_key",
      hasActivePayments: false,
      imageUrl: "cool-gyms-have-cooler-images",
    );
    Gym prodGym = Gym(
      id: "prodGym",
      name: "Prod gym",
      paymentAppDomain: "prod-app",
      stripePublicKey: "prod_key",
      hasActivePayments: false,
      imageUrl: "cool-gyms-have-cooler-images",
    );

    User fakeUser =
        User(email: fakeEmail, name: "Test", imageUrl: "test", selectedGymId: fakeGymId);
    User prodUser =
        User(email: "prod@email.com", name: "ProdUser", imageUrl: "test", selectedGymId: "prodGym");

    setUp(() {
      mockPaymentApi = MockPaymentApi();
      mockPaymentMethodRepository = MockPaymentMethodRepository();
      mockPaymentMethodRepository = MockPaymentMethodRepository();
      mockUserRepository = MockUserRepository();
      mockUrlLauncherUtil = MockUrlLauncherUtil();

      configureThrowOnMissingStub([
        mockPaymentApi,
        mockPaymentMethodRepository,
        mockUrlLauncherUtil,
        mockUserRepository,
      ]);
    });

    tearDown(() {
      logAndVerifyNoMoreInteractions([
        mockPaymentApi,
        mockPaymentMethodRepository,
        mockUrlLauncherUtil,
        mockUserRepository,
      ]);
    });

    // todo missing initial state test
    group("on PaymentMethodUpdated event", () {
      group("when there are no payment methods", () {
        setUp(() {
          when(mockUserRepository.getUser()).thenAnswer((realInvocation) => Stream.value(fakeUser));
          when(mockPaymentMethodRepository.getPaymentMethod(gymId: testGym.id, email: fakeEmail))
              .thenAnswer((realInvocation) {
            return Stream.value(null);
          });
        });

        tearDown(() {
          verify(mockUserRepository.getUser());
          verify(mockPaymentMethodRepository.getPaymentMethod(
              gymId: fakeUser.selectedGymId, email: fakeUser.email));
        });

        blocTest("should emit PaymentMethodEmpty",
            build: () => PaymentMethodsBloc(
                userRepository: mockUserRepository,
                paymentApi: mockPaymentApi,
                paymentMethodRepository: mockPaymentMethodRepository,
                urlLauncherUtil: mockUrlLauncherUtil),
            expect: () => [PaymentMethodEmpty(customerEmail: fakeUser.email)]);
      });

      group("when there are payment methods", () {
        setUp(() {
          when(mockUserRepository.getUser()).thenAnswer((realInvocation) => Stream.value(fakeUser));
          when(mockPaymentMethodRepository.getPaymentMethod(gymId: fakeGymId, email: fakeEmail))
              .thenAnswer((realInvocation) {
            return Stream.value(fakePaymentMethod);
          });
        });

        tearDown(() {
          verify(mockUserRepository.getUser());
          verify(mockPaymentMethodRepository.getPaymentMethod(gymId: fakeGymId, email: fakeEmail));
        });

        blocTest("should emit PaymentMethodLoaded with the default payment method",
            build: () => PaymentMethodsBloc(
                userRepository: mockUserRepository,
                paymentApi: mockPaymentApi,
                paymentMethodRepository: mockPaymentMethodRepository,
                urlLauncherUtil: mockUrlLauncherUtil),
            expect: () => [PaymentMethodLoaded(paymentMethod: fakePaymentMethod)]);
      });
    });

    group("on RegisterBankAccount event", () {
      group("when calling dev endpoint", () {
        setUp(() {
          when(mockUserRepository.getUser()).thenAnswer((realInvocation) => Stream.empty());
          when(mockPaymentApi.setupIntent(gymId: fakeGymId, customerEmail: fakeEmail))
              .thenAnswer((realInvocation) {
            return Future.value("some_secret");
          });
          when(mockUrlLauncherUtil.launchUrl(argThat(startsWith(
                  "https://${testGym.paymentAppDomain}?pk=${testGym.stripePublicKey}&customerEmail=test@test.com&cs=some_secret&gymName=${testGym.id}"))))
              .thenAnswer((realInvocation) => null);
        });

        tearDown(() {
          verify(mockUserRepository.getUser());
          verify(mockPaymentApi.setupIntent(customerEmail: fakeEmail, gymId: fakeGymId));
          verify(mockUrlLauncherUtil.launchUrl(argThat(startsWith(
              "https://${testGym.paymentAppDomain}?pk=${testGym.stripePublicKey}&customerEmail=test@test.com&cs=some_secret&gymName=${testGym.id}"))));
        });

        blocTest(
          "should call the payment api to setup intent of register a payment method - 1",
          build: () => PaymentMethodsBloc(
              userRepository: mockUserRepository,
              paymentApi: mockPaymentApi,
              paymentMethodRepository: mockPaymentMethodRepository,
              urlLauncherUtil: mockUrlLauncherUtil),
          act: (bloc) => bloc.add(RegisterBankAccount(gym: testGym, billingEmail: fakeUser.email)),
          expect: () => [
            PaymentMethodLoading(show: true),
            PaymentMethodLoading(show: false),
          ],
        );
      });

      group("when calling prod endpoint", () {
        setUp(() {
          when(mockUserRepository.getUser()).thenAnswer((realInvocation) => Stream.empty());
          when(mockPaymentApi.setupIntent(gymId: "prodGym", customerEmail: prodUser.email))
              .thenAnswer((realInvocation) {
            return Future.value("prod_secret");
          });
        });

        tearDown(() {
          verify(mockUserRepository.getUser());
          verify(mockPaymentApi.setupIntent(customerEmail: prodUser.email, gymId: "prodGym"));
          verify(mockUrlLauncherUtil.launchUrl(argThat(startsWith(
              "https://prod-app?pk=prod_key&customerEmail=prod@email.com&cs=prod_secret&gymName=prodGym"))));
        });

        blocTest(
          "should call the payment api to setup intent of register a payment method",
          build: () => PaymentMethodsBloc(
              userRepository: mockUserRepository,
              paymentApi: mockPaymentApi,
              paymentMethodRepository: mockPaymentMethodRepository,
              urlLauncherUtil: mockUrlLauncherUtil),
          act: (bloc) => bloc.add(RegisterBankAccount(gym: prodGym, billingEmail: prodUser.email)),
          expect: () => [
            PaymentMethodLoading(show: true),
            PaymentMethodLoading(show: false),
          ],
        );
      });
    });

    group("on ChangeBankAccount event", () {
      group("when calling dev endpoint", () {
        setUp(() {
          when(mockUserRepository.getUser()).thenAnswer((realInvocation) => Stream.empty());
          when(mockPaymentApi.setupIntent(
            gymId: fakeGymId,
            customerEmail: fakeEmail,
          )).thenAnswer((realInvocation) {
            return Future.value("some_secret");
          });
        });

        tearDown(() {
          verify(mockUserRepository.getUser());
          verify(mockPaymentApi.setupIntent(
            customerEmail: fakeEmail,
            gymId: fakeGymId,
          ));
          verify(mockUrlLauncherUtil.launchUrl(argThat(startsWith(
              "https://${testGym.paymentAppDomain}?pk=${testGym.stripePublicKey}&customerEmail=test@test.com&cs=some_secret&gymName=${testGym.id}"))));
        });

        blocTest(
          "should call the payment api to setup intent of register a payment method",
          build: () => PaymentMethodsBloc(
              userRepository: mockUserRepository,
              paymentApi: mockPaymentApi,
              paymentMethodRepository: mockPaymentMethodRepository,
              urlLauncherUtil: mockUrlLauncherUtil),
          act: (bloc) => bloc.add(ChangeBankAccount(
            gym: testGym,
            billingEmail: fakeUser.email,
          )),
          expect: () => [
            PaymentMethodLoading(show: true),
            PaymentMethodLoading(show: false),
          ],
        );
      });
    });
  });
}
