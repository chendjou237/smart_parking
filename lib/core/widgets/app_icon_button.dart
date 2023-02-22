import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_parking/core/theme/app_text_theme.dart';
import 'package:smart_parking/core/theme/colors.dart';
import 'package:smart_parking/core/widgets/width_box.dart';

class AppIconButton extends StatefulWidget {
  final String text;
  final Function()? onTap;
  const AppIconButton({super.key, required this.text, required this.onTap});

  @override
  State<AppIconButton> createState() => _AppIconButtonState();
}

class _AppIconButtonState extends State<AppIconButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Ink(
        width: double.infinity,
        height: 50.h,
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        decoration: BoxDecoration(
          color: AppColor.secondary,
          borderRadius: BorderRadius.circular(14.r),
        ),
        child: Center(
            child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.add,
            ),
            WidthBox(16.5),
            Text(widget.text, style: AppTextTheme.iconButtonText),
          ],
        )),
      ),
    );
  }
}
