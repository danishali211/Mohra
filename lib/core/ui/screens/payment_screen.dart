import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moyasar/moyasar.dart';

import '../../../generated/l10n.dart';
import '../../constants/app/app_constants.dart';
import '../../params/payment_params.dart';
import '../toast.dart';

class PaymentPage extends StatelessWidget {
  PaymentPage({super.key, required this.params});

  PaymentParams params;

  PaymentConfig get paymentConfig => PaymentConfig(
        publishableApiKey: AppConstants.PublishableLiveKey,
        amount: (params.amount! * 100).toInt(),
        description: 'order #1324',
        metadata: {'size': '250g'},
        creditCard: CreditCardConfig(
          saveCard: true,
          manual: false,
        ),
        applePay: ApplePayConfig(
          merchantId: AppConstants.MerchantIDKey,
          label: 'Mohra Store',
          manual: false,

        ),
      );

  void onPaymentResult(result) {
    print("ApplePayment$result");
    if (result is PaymentResponse) {
      switch (result.status) {
        case PaymentStatus.paid:
          params.onSuccessPayment!(result);
          break;
        case PaymentStatus.failed:
          params.onFailedPayment!(result);
          break;
        case PaymentStatus.initiated:
          // TODO: Handle this case.
          break;
        case PaymentStatus.authorized:
          // TODO: Handle this case.
          break;
        case PaymentStatus.captured:
          // TODO: Handle this case.
          break;
      }
    } else {
      print("AppleError");
      Toast.show(result.message ?? Translation.current.something_broken);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 80.h),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: CreditCard(
                    config: paymentConfig,
                    onPaymentResult: onPaymentResult,
                  ),
                ),
                if (Platform.isIOS) const Text("or"),
                const SizedBox(
                  height: 30,
                ),
                ApplePay(
                  config: paymentConfig,
                  onPaymentResult: onPaymentResult,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
