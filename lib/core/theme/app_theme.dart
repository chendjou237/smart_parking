import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_parking/core/theme/app_text_theme.dart';
import 'package:smart_parking/core/theme/colors.dart';

final appTheme = ThemeData(
  primaryColor: AppColor.primary,
  scaffoldBackgroundColor: AppColor.background,
  iconTheme: IconThemeData(
    color: AppColor.buttonText,
    size: 15.r,
  ),
  appBarTheme: AppBarTheme(
    color: AppColor.background,
    centerTitle: true,
    elevation: 0,
    iconTheme: IconThemeData(
      color: AppColor.text,
      size: 17.r,
    ),
    toolbarTextStyle: AppTextTheme.authTitle,
  ),
);
