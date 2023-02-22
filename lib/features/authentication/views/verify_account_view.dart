import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:smart_parking/core/theme/pin_theme.dart';

import '../../../core/theme/app_text_theme.dart';
import '../../../core/widgets/widgets.dart';

class VerifyAccountView extends StatelessWidget {
  const VerifyAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Verify Account",
            style: AppTextTheme.authTitle,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                HeightBox(143),
                Image(
                  image: AssetImage("assets/images/logo.png"),
                ),
                HeightBox(64),
                Text(
                  "Please enter the code you receive by SMS to confirm your account ",
                  style: AppTextTheme.authenticationAuthSubTitle,
                ),
                HeightBox(19),
                SizedBox(
                  height: 40.h,
                  child: Pinput(
                    defaultPinTheme: defaultPinTheme,
                    separator: WidthBox(40),
                    onCompleted: print,
                  ),
                ),
                HeightBox(24),
                ExtendedButton(
                  text: "Confirm",
                  onTap: () => context.go('/user-infos'),
                ),
                HeightBox(24),
                GestureDetector(
                  child: Text(
                    "Resend Code",
                    style: AppTextTheme.resendText,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
