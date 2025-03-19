import 'package:animated_icon/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusinessTile extends StatelessWidget {
  final String? businessAssetsImageUrl;
  final String? businessName;
  final String? iconName;
  final bool isIcon;
  final IconData? iconData;

  const BusinessTile({
    super.key,
    this.businessAssetsImageUrl,
    this.businessName,
    this.iconName,
    this.isIcon = false,
    this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        /// Circle Avatar with Cover Image
        Container(
          width: 48.r,
          height: 48.r,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image:
                  businessAssetsImageUrl != null &&
                          businessAssetsImageUrl!.isNotEmpty
                      ? AssetImage(businessAssetsImageUrl!) as ImageProvider
                      : const NetworkImage(
                        "https://images.unsplash.com/photo-1610088441520-4352457e7095?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      ),
              fit: BoxFit.cover, // Ensures the image covers the entire circle
            ),
          ),
        ),

        SizedBox(height: 5.h),

        /// Person Name or Icon Name
        Text(
          isIcon ? (iconName ?? "More") : (businessName ?? "Unknown"),
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
