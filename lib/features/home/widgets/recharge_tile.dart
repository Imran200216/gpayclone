import 'package:animated_icon/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RechargeTile extends StatelessWidget {
  final String rechargeIcon;
  final String rechargeTitle;

  const RechargeTile({
    super.key,
    required this.rechargeIcon,
    required this.rechargeTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      mainAxisSize: MainAxisSize.min,
      children: [
        /// Icon
        Image.asset(rechargeIcon, height: 22.h, width: 22.w, fit: BoxFit.cover),

        /// Text
        Text(
          rechargeTitle, // Use title from the model
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 11.sp,
            color: AppColors.whiteColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
