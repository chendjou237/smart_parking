import 'package:flutter/material.dart';

import '../theme/colors.dart';

Color statusColor(String status) {
  if (status == "Ongoing") {
    return AppColor.warning;
  } else if (status == "Waiting for payment") {
    return AppColor.waiting;
  } else if (status == "Paid parking") {
    return AppColor.secondary;
  } else {
    return AppColor.primary;
  }
}
