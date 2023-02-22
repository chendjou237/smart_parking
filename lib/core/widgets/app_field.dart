// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:smart_parking/core/theme/app_text_theme.dart';
import 'package:smart_parking/core/theme/colors.dart';

class AppField extends StatelessWidget {
  final String hintText;
  const AppField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
        color: AppColor.background,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(color: AppColor.border),
      ),
      child: TextField(
        keyboardType: TextInputType.phone,
        style: AppTextTheme.inputText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppTextTheme.inputText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
