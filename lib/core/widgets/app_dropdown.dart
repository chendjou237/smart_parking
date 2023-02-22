// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:smart_parking/core/theme/colors.dart';

class AppDropdown extends StatefulWidget {
  String value;
  final List<String> items;
  AppDropdown({
    Key? key,
    required this.value,
    required this.items,
  }) : super(key: key);

  @override
  State<AppDropdown> createState() => _AppDropdownState();
}

class _AppDropdownState extends State<AppDropdown> {
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
        child: DropdownButton(
          items: widget.items
              .map((item) => DropdownMenuItem(value: item, child: Text(item)))
              .toList(),
          value: widget.value,
          onChanged: (newValue) {
            setState(() {
              widget.value = newValue!;
            });
          },
          isExpanded: true,
          underline: SizedBox(),
          icon: Icon(Icons.keyboard_arrow_down),
        ));
  }
}
