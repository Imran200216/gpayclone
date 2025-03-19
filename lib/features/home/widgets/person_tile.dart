import 'package:animated_icon/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonTile extends StatelessWidget {
  final String? personNetworkImageUrl;
  final String? personName;
  final String? iconName;
  final bool isIcon;
  final IconData? iconData; // Icon to be shown if isIcon is true

  const PersonTile({
    super.key,
    this.personNetworkImageUrl,
    this.personName,
    this.iconName,
    this.isIcon = false,
    this.iconData, // Optional icon
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        /// Profile Image or Icon
        isIcon
            ? CircleAvatar(
              radius: 24.r,
              backgroundColor: AppColors.textFieldFillBgColor,
              child: Icon(
                iconData ?? Icons.more_horiz, // Default icon
                size: 28.r,
                color: AppColors.whiteColor,
              ),
            )
            : CircleAvatar(
              backgroundImage:
                  personNetworkImageUrl != null &&
                          personNetworkImageUrl!.isNotEmpty
                      ? NetworkImage(personNetworkImageUrl!)
                      : const NetworkImage(
                            "https://images.unsplash.com/photo-1610088441520-4352457e7095?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                          )
                          as ImageProvider,
              radius: 24.r,
            ),

        SizedBox(height: 5.h),

        /// Person Name or Icon Name
        Text(
          isIcon ? (iconName ?? "More") : (personName ?? "Unknown"),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12.sp,
            color: AppColors.whiteColor,
            fontWeight: FontWeight.w600,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
      ],
    );
  }
}
