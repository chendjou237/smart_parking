import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:smart_parking/core/theme/colors.dart';

final defaultPinTheme = PinTheme(
  width: 50,
  height: 50,
  textStyle: TextStyle(
      fontSize: 20,
      color: Color.fromRGBO(30, 60, 87, 1),
      fontWeight: FontWeight.w600),
  decoration: BoxDecoration(
    border: Border.all(color: AppColor.border),
    borderRadius: BorderRadius.circular(20),
  ),
);
