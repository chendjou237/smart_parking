import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_parking/core/theme/colors.dart';

class AppTextTheme {
  static TextStyle get authTitle => GoogleFonts.inter(
        fontSize: 17.sp,
        fontWeight: FontWeight.w600,
        color: AppColor.text,
        letterSpacing: -0.4,
      );
  static TextStyle get authenticationAuthSubTitle => GoogleFonts.inter(
        fontSize: 15.sp,
        fontWeight: FontWeight.w400,
        color: AppColor.text,
        letterSpacing: -0.22,
      );
  static TextStyle get extendedButtonText => GoogleFonts.inter(
        fontSize: 19.sp,
        fontWeight: FontWeight.w500,
        color: AppColor.buttonText,
        letterSpacing: -0.45,
      );
  static TextStyle get iconButtonText => GoogleFonts.inter(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: AppColor.buttonText,
        letterSpacing: -0.45,
      );
  static TextStyle get inputText => GoogleFonts.inter(
        fontSize: 15.sp,
        fontWeight: FontWeight.w400,
        color: AppColor.text,
        letterSpacing: -0.33,
      );

  static TextStyle get labelText => GoogleFonts.inter(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: AppColor.grayText,
        letterSpacing: -0.33,
      );
  static TextStyle get prefixPhone => GoogleFonts.inter(
        fontSize: 15.sp,
        fontWeight: FontWeight.w400,
        color: AppColor.grayText,
        letterSpacing: -0.33,
      );
  static TextStyle get resendText => GoogleFonts.inter(
        fontSize: 15.sp,
        fontWeight: FontWeight.w400,
        color: AppColor.secondary,
        letterSpacing: -0.15,
      );
  static TextStyle get dashboardLabel => GoogleFonts.inter(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: AppColor.lightDark,
        letterSpacing: -0.15,
      );
  static TextStyle get currency => GoogleFonts.inter(
        fontSize: 16.sp,
        fontWeight: FontWeight.w700,
        color: AppColor.grayText2,
        letterSpacing: -0.1,
      );
  static TextStyle get amount => GoogleFonts.inter(
        fontSize: 48.sp,
        fontWeight: FontWeight.w700,
        color: AppColor.text,
        letterSpacing: -0.4,
      );
  static TextStyle get matriculation => GoogleFonts.inter(
        fontSize: 17.sp,
        fontWeight: FontWeight.w500,
        color: AppColor.text,
        letterSpacing: -0.4,
      );
  static TextStyle get date => GoogleFonts.inter(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: AppColor.lightDark,
        letterSpacing: -0.15,
      );
  static TextStyle get stopButtonText => GoogleFonts.inter(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
        color: AppColor.buttonText,
        letterSpacing: -0.15,
      );
  static TextStyle get status => GoogleFonts.inter(
        fontSize: 10.sp,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.15,
      );
}
