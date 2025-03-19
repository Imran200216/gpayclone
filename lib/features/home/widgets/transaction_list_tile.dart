import 'package:animated_icon/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionListTile extends StatelessWidget {
  final String svgIconPath;
  final String listTitleText;

  const TransactionListTile({
    super.key,
    required this.svgIconPath,
    required this.listTitleText,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        "assets/icon/svg/$svgIconPath.svg",
        height: 20.h,
        width: 20.w,
        fit: BoxFit.cover,
      ),

      title: Text(listTitleText),
      titleTextStyle: TextStyle(
        color: AppColors.whiteColor,
        fontWeight: FontWeight.w600,
        fontSize: 14.sp,
      ),

      trailing: SvgPicture.asset(
        "assets/icon/svg/arrow-forward.svg",
        height: 13.h,
        width: 13.w,
        fit: BoxFit.cover,
      ),
    );
  }
}
