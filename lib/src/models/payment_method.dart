import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method.freezed.dart';

@freezed
abstract class PaymentMethod with _$PaymentMethod {
  factory  PaymentMethod({
    @required final String billingEmail,
    @required final int lastFourDigits,
    @required final String country,
  }) = _PaymentMethod;
}
