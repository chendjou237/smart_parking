import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/app_text_theme.dart';
import '../../../core/widgets/widgets.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          AppIcon(icon: Icons.menu),
          WidthBox(12),
          AppIcon(icon: Icons.notifications),
          WidthBox(16)
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 78.w, vertical: 24.h),
              decoration: BoxDecoration(
                // bottom shadow for container
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      spreadRadius: 4,
                      blurRadius: 8,
                      offset: const Offset(0, 4), // changes position of shadow
                      blurStyle: BlurStyle.outer),
                ],
              ),
              child: Column(children: [
                Text("Balance", style: AppTextTheme.dashboardLabel),
                HeightBox(11),
                Text.rich(
                  TextSpan(
                    text: "1.000",
                    style: AppTextTheme.amount,
                    children: [
                      WidgetSpan(
                        alignment: PlaceholderAlignment.top,
                        child: Text("XAF", style: AppTextTheme.currency),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.start,
                ),
                HeightBox(24),
                AppIconButton(
                  text: "Credit your account",
                  onTap: () {},
                ),
              ]),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    HeightBox(24),
                    Text("Monday, 13 December",
                        style: AppTextTheme.dashboardLabel),
                    HeightBox(12),
                    DashBoardTile(
                      immatricule: "LT 257 ER",
                      date: "Start at · 9:40 AM ",
                      status: "Ongoing",
                    ),
                    DashBoardTile(
                      immatricule: "LT 7983 TQ",
                      date: "Start at · 12:03 PM",
                      status: "Waiting for payment",
                    ),
                    Text(
                      "Sunday, 11 December",
                      style: AppTextTheme.dashboardLabel,
                    ),
                    HeightBox(20),
                    DashBoardTile(
                      immatricule: "CE 4697 O",
                      date: "Start at · 1:26 PM",
                      status: "Paid parking",
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 16.0.w),
                      child: ExtendedButton(
                        text: "Demarrer un Stationnement ",
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
