// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_parking/core/theme/app_text_theme.dart';
import 'package:smart_parking/core/theme/colors.dart';
import 'package:smart_parking/core/utils/utils.dart';

class DashBoardTile extends StatelessWidget {
  const DashBoardTile({
    Key? key,
    required this.immatricule,
    required this.date,
    required this.status,
  }) : super(key: key);
  final String immatricule;
  final String date;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30.h),
      child: ListTile(
        title: Text.rich(
          TextSpan(
            text: immatricule,
            style: AppTextTheme.matriculation,
            children: [
              WidgetSpan(
                child: Container(
                  margin: EdgeInsets.only(left: 16.w),
                  padding: EdgeInsets.all(4.r),
                  decoration: BoxDecoration(
                    color: statusColor(status).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Text(" $status",
                      style: AppTextTheme.status
                          .copyWith(color: statusColor(status))),
                ),
                style: AppTextTheme.status.copyWith(color: statusColor(status)),
              ),
            ],
          ),
        ),
        contentPadding: EdgeInsets.only(
          right: 0,
        ),
        subtitle: Text(
          date,
          style: AppTextTheme.date,
        ),
        trailing: status == "Ongoing"
            ? GestureDetector(
                onTap: () {},
                child: Container(
                  height: 48.h,
                  width: 76.w,
                  margin: EdgeInsets.only(right: 0),
                  decoration: BoxDecoration(
                    color: AppColor.warning,
                  ),
                  child: Center(
                      child: Text("STOP", style: AppTextTheme.stopButtonText)),
                ),
              )
            : null,
      ),
    );
  }
}
