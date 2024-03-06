import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starter_application/core/common/app_colors.dart';
import 'package:starter_application/core/common/app_config.dart';

import '../../../main.dart';

class WaitingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }
}

class TextWaitingWidget extends StatelessWidget {
  final String text;
  final Duration? pause;
  final Color textColor;
  const TextWaitingWidget(this.text,
      {Key? key, this.pause, this.textColor = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedTextKit(
        animatedTexts: [
          (AppConfig().appLanguage == 'ar' || isArabic)? ColorizeAnimatedText(
        text,
        textStyle: TextStyle(
          color: textColor,
          fontWeight: FontWeight.bold,
          fontSize: 50.sp,
        ),
        colors: AppColors.MessageOrangeGradiant,
      ) : WavyAnimatedText(
            text,
            textStyle: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 50.sp,
            ),
          ) ,
        ],
        isRepeatingAnimation: true,
        displayFullTextOnTap: false,
        repeatForever: true,
        pause: pause ??
            const Duration(
              milliseconds: 700,
            ),
      ),
    );
  }
}
