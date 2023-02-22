import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_parking/core/theme/app_text_theme.dart';
import 'package:smart_parking/core/theme/colors.dart';

class ExtendedButton extends StatefulWidget {
  final String text;
  final Function()? onTap;
  const ExtendedButton({super.key, required this.text, required this.onTap});

  @override
  State<ExtendedButton> createState() => _ExtendedButtonState();
}

class _ExtendedButtonState extends State<ExtendedButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Ink(
        width: double.infinity,
        height: 50.h,
        decoration: BoxDecoration(
          color: AppColor.secondary,
          borderRadius: BorderRadius.circular(14.r),
        ),
        child: Center(
            child: Text(widget.text, style: AppTextTheme.extendedButtonText)),
      ),
    );
  }
}
