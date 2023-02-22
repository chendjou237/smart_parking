import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_parking/core/theme/app_text_theme.dart';
import 'package:smart_parking/core/widgets/widgets.dart';

class UserInfosView extends StatefulWidget {
  const UserInfosView({super.key});

  @override
  State<UserInfosView> createState() => _UserInfosViewState();
}

class _UserInfosViewState extends State<UserInfosView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Complete your profile',
          style: AppTextTheme.authTitle,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeightBox(111),
              Text(
                "Full Name",
                style: AppTextTheme.labelText,
              ),
              HeightBox(4),
              AppField(
                hintText: "Steve Rogers",
              ),
              HeightBox(16),
              Text("The brand of your vehicle", style: AppTextTheme.labelText),
              HeightBox(4),
              AppDropdown(
                value: "Mercedes",
                items: const [
                  "Toyota",
                  "Renault",
                  "Mercedes",
                  "Peugeot",
                ],
              ),
              HeightBox(16),
              Text("The model of your vehicle", style: AppTextTheme.labelText),
              HeightBox(4),
              AppDropdown(
                value: "C 200",
                items: const [
                  "C 200",
                  "C 500",
                  "C 300",
                  "C 400",
                ],
              ),
              HeightBox(16),
              Text("Immatriculation", style: AppTextTheme.labelText),
              HeightBox(4),
              AppField(
                hintText: "LT 385 WE",
              ),
              HeightBox(32),
              ExtendedButton(
                text: "Save",
                onTap: () {
                  context.go('/dashboard');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
