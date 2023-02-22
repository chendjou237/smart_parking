import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_parking/core/theme/app_text_theme.dart';
import 'package:smart_parking/core/widgets/widgets.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign In',
          style: AppTextTheme.authTitle,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(children: [
            HeightBox(163),
            Image(
              image: AssetImage("assets/images/logo.png"),
            ),
            HeightBox(64),
            Text(
              'Please enter your phone number to signin to your account',
              style: AppTextTheme.authenticationAuthSubTitle,
            ),
            HeightBox(19),
            AppPhoneField(
              hintText: " 6 94 95 00 12",
            ),
            HeightBox(24),
            ExtendedButton(
                text: 'Sign In', onTap: () => context.go('/verify-account')),
          ]),
        ),
      ),
    );
  }
}
