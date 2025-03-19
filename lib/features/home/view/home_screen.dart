import 'package:animated_icon/core/themes/app_colors.dart';
import 'package:animated_icon/features/home/model/business_item.dart';
import 'package:animated_icon/features/home/model/grid_item.dart';
import 'package:animated_icon/features/home/model/person.dart';
import 'package:animated_icon/features/home/view_modals/business_grid_provider.dart';
import 'package:animated_icon/features/home/view_modals/grid_provider.dart';
import 'package:animated_icon/features/home/view_modals/recharge_grid_provider.dart';
import 'package:animated_icon/features/home/widgets/business_tile.dart';
import 'package:animated_icon/features/home/widgets/person_tile.dart';
import 'package:animated_icon/features/home/widgets/recharge_tile.dart';
import 'package:animated_icon/features/home/widgets/transaction_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// items list
    final List<Person> people = [
      Person(
        imageUrl:
            "https://plus.unsplash.com/premium_photo-1672239496290-5061cfee7ebb?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        name: "Imran",
      ),
      Person(
        imageUrl:
            "https://images.unsplash.com/photo-1511367461989-f85a21fda167?w=500",
        name: "Ayesha",
      ),
      Person(
        imageUrl:
            "https://images.unsplash.com/photo-1607746882042-944635dfe10e?w=500",
        name: "Rahul",
      ),
      Person(
        imageUrl:
            "https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=500",
        name: "Sophia",
      ),
      Person(
        imageUrl:
            "https://images.unsplash.com/photo-1546964124-0cce460f38ef?w=500",
        name: "Daniel",
      ),
      Person(
        imageUrl:
            "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?w=500",
        name: "Ali",
      ),
      Person(
        imageUrl:
            "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        name: "Zara",
      ),

      Person(
        imageUrl:
            "https://images.unsplash.com/photo-1602442787305-decbd65be507?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        name: "Varsha",
      ),
      Person(
        imageUrl:
            "https://images.unsplash.com/photo-1560087637-bf797bc7796a?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        name: "Mujai",
      ),

      Person(
        imageUrl:
            "https://images.unsplash.com/photo-1588516903720-8ceb67f9ef84?q=80&w=3144&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        name: "Harshini",
      ),
      Person(
        imageUrl:
            "https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?q=80&w=3271&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        name: "Lara",
      ),

      Person(
        imageUrl:
            "https://images.unsplash.com/photo-1581803118522-7b72a50f7e9f?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        name: "Vimal",
      ),
      Person(
        imageUrl:
            "https://plus.unsplash.com/premium_photo-1677009541396-dff25dd66602?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        name: "Tharun",
      ),

      Person(
        imageUrl:
            "https://images.unsplash.com/photo-1484515991647-c5760fcecfc7?q=80&w=3149&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        name: "Naveen",
      ),
      Person(
        imageUrl:
            "https://images.unsplash.com/photo-1519058082700-08a0b56da9b4?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        name: "Kevin",
      ),
    ];

    /// grid items
    final List<GridItem> gridItems = [
      GridItem(icon: "assets/img/png/qr-img.png", title: "Scan QR\nCode"),
      GridItem(icon: "assets/img/png/contact-img.png", title: "Pay\nContacts"),
      GridItem(
        icon: "assets/img/png/phone-number.png",
        title: "Pay phone\nnumber",
      ),
      GridItem(icon: "assets/img/png/bank-img.png", title: "Bank\ntransfer"),
      GridItem(
        icon: "assets/img/png/phone-number.png",
        title: "Pay UPI ID or\nnumber",
      ),
      GridItem(
        icon: "assets/img/png/self-transfer.png",
        title: "Self\ntransfer",
      ),
      GridItem(icon: "assets/img/png/pay-bills.png", title: "Pay\nbills"),
      GridItem(
        icon: "assets/img/png/mobile-recharge.png",
        title: "Mobile\nrecharge",
      ),
    ];

    /// business list
    final List<BusinessItem> businessItems = [
      BusinessItem(imageUrl: "assets/img/png/swiggy.png", name: "Swiggy"),

      BusinessItem(imageUrl: "assets/img/png/pharmarcy.png", name: "Medicals"),

      BusinessItem(imageUrl: "assets/img/png/bharath.png", name: "Medicals"),

      BusinessItem(imageUrl: "assets/img/png/bharath.png", name: "Medicals"),

      BusinessItem(imageUrl: "assets/img/png/bharath.png", name: "Medicals"),

      BusinessItem(imageUrl: "assets/img/png/swiggy.png", name: "Swiggy"),

      BusinessItem(imageUrl: "assets/img/png/pharmarcy.png", name: "Medicals"),

      BusinessItem(imageUrl: "assets/img/png/bharath.png", name: "Medicals"),

      BusinessItem(imageUrl: "assets/img/png/bharath.png", name: "Medicals"),

      BusinessItem(imageUrl: "assets/img/png/bharath.png", name: "Medicals"),
    ];

    /// recharges list
    final List<BusinessItem> rechargeItems = [
      BusinessItem(imageUrl: "assets/img/png/tv.png", name: "DTH/Cable\nTV"),

      BusinessItem(
        imageUrl: "assets/img/png/postpaid.png",
        name: "Postpaid\nmobile",
      ),

      BusinessItem(
        imageUrl: "assets/img/png/electricity.png",
        name: "Electricity",
      ),

      BusinessItem(
        imageUrl: "assets/img/png/fastag.png",
        name: "FAST\nrecharge",
      ),

      BusinessItem(imageUrl: "assets/img/png/tv.png", name: "DTH/Cable\nTV"),

      BusinessItem(
        imageUrl: "assets/img/png/postpaid.png",
        name: "Postpaid\nmobile",
      ),

      BusinessItem(
        imageUrl: "assets/img/png/electricity.png",
        name: "Electricity",
      ),

      BusinessItem(
        imageUrl: "assets/img/png/fastag.png",
        name: "FAST\nrecharge",
      ),
    ];

    /// promotion list
    final List<BusinessItem> promotionItems = [
      BusinessItem(imageUrl: "assets/img/png/coupon.png", name: "Coupon"),

      BusinessItem(imageUrl: "assets/img/png/rewards.png", name: "Rewards"),

      BusinessItem(imageUrl: "assets/img/png/referrals.png", name: "Referrals"),

      BusinessItem(imageUrl: "assets/img/png/home.png", name: "Rewards"),
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  /// image
                  Image.asset(
                    "assets/img/png/gpay-bg-img.png",
                    height: 180.h,
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),

                  /// search text field & profile
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 20.h,
                    ),
                    child: Row(
                      spacing: 14.w,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        /// search text field
                        Expanded(
                          child: SizedBox(
                            height: 40.h,
                            child: TextField(
                              style: TextStyle(
                                color: AppColors.hintTextColor,
                                fontSize: 13.sp,
                              ),
                              decoration: InputDecoration(
                                hintText: 'Pay friends and merchants',
                                hintStyle: TextStyle(
                                  color: AppColors.hintTextColor,
                                  fontSize: 13.sp,
                                ),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: AppColors.whiteColor,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.w),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: AppColors.textFieldFillBgColor,
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 10.h,
                                  horizontal: 16.w,
                                ),
                              ),
                            ),
                          ),
                        ),

                        /// profile photo
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/img/png/profile.png",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20.h),

              /// list of recharges
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, // 4 items per row
                    crossAxisSpacing: 8.w,
                    mainAxisSpacing: 8.h,
                    childAspectRatio: 1,
                  ),
                  itemCount: gridItems.length,
                  itemBuilder: (context, index) {
                    final rechargeItem = gridItems[index];
                    return RechargeTile(
                      rechargeIcon: rechargeItem.icon,
                      rechargeTitle: rechargeItem.title,
                    );
                  },
                ),
              ),

              SizedBox(height: 14.h),

              /// UPI name
              Center(
                child: Container(
                  width: 220.w,
                  height: 28.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.w),
                    color: AppColors.transparentColor,
                    border: Border.all(color: AppColors.upiBtnStrokeColor),
                  ),
                  child: Center(
                    child: Row(
                      spacing: 10.w,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "UPI ID : imrandev24@okicici",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                            color: AppColors.upiTextColor,
                          ),
                        ),
                        Icon(
                          Icons.copy,
                          color: AppColors.upiBtnStrokeColor,
                          size: 14.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20.h),

              /// peoples
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "People",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: AppColors.whiteColor,
                      ),
                    ),

                    SizedBox(height: 20.h),

                    /// peoples list
                    ChangeNotifierProvider(
                      create: (BuildContext context) => GridProvider(),
                      child: Consumer<GridProvider>(
                        builder: (context, personContactProvider, child) {
                          return GridView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount:
                                      personContactProvider.crossAxisCount,
                                  crossAxisSpacing: 8.0,
                                  mainAxisSpacing: 8.0,
                                  childAspectRatio: 0.8,
                                ),
                            itemCount:
                                (personContactProvider.isExpanded
                                    ? people.length
                                    : personContactProvider.visibleItems) +
                                1,
                            itemBuilder: (context, index) {
                              if (index <
                                  (personContactProvider.isExpanded
                                      ? people.length
                                      : personContactProvider.visibleItems)) {
                                final person = people[index];
                                return PersonTile(
                                  personNetworkImageUrl: person.imageUrl,
                                  personName: person.name,
                                );
                              } else {
                                return GestureDetector(
                                  onTap:
                                      () => personContactProvider
                                          .toggleGridExpansion(people.length),
                                  child: PersonTile(
                                    isIcon: true,
                                    iconData:
                                        personContactProvider.isExpanded
                                            ? Icons.expand_less
                                            : Icons.more_horiz,
                                    iconName:
                                        personContactProvider.isExpanded
                                            ? 'Less'
                                            : 'More',
                                  ),
                                );
                              }
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20.h),

              /// business
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    /// business
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Business",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                            color: AppColors.whiteColor,
                          ),
                        ),

                        /// Explore btn
                        Container(
                          height: 30.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.r),
                            color: AppColors.greenPrimaryColor,
                          ),
                          child: Center(
                            child: Row(
                              spacing: 10.w,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                /// svg icon
                                SvgPicture.asset(
                                  "assets/icon/svg/shopping-bag.svg",
                                  color: AppColors.whiteColor,
                                  height: 14.h,
                                  width: 14.w,
                                  fit: BoxFit.cover,
                                ),

                                Text(
                                  "Explore",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.sp,
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20.h),

                    /// Business Grid
                    ChangeNotifierProvider(
                      create: (BuildContext context) => BusinessGridProvider(),
                      child: Consumer<BusinessGridProvider>(
                        builder: (context, gridProvider, child) {
                          return GridView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4, // Fixed 4 items per row
                                  crossAxisSpacing: 8.0,
                                  mainAxisSpacing: 8.0,
                                  childAspectRatio: 0.8,
                                ),
                            itemCount:
                                (gridProvider.isExpanded
                                    ? businessItems.length +
                                        1 // Ensure the "More/Less" button stays
                                    : gridProvider.visibleItems),
                            itemBuilder: (context, index) {
                              if (index <
                                  (gridProvider.isExpanded
                                      ? businessItems.length
                                      : gridProvider.visibleItems - 1)) {
                                // Business items
                                final item = businessItems[index];
                                return BusinessTile(
                                  businessAssetsImageUrl: item.imageUrl,
                                  businessName: item.name,
                                );
                              } else {
                                // "More" or "Less" button
                                return GestureDetector(
                                  onTap:
                                      () => gridProvider.toggleGridExpansion(
                                        businessItems.length,
                                      ),
                                  child: PersonTile(
                                    isIcon: true,
                                    iconData:
                                        gridProvider.isExpanded
                                            ? Icons.expand_less
                                            : Icons.more_horiz,
                                    iconName:
                                        gridProvider.isExpanded
                                            ? 'Less'
                                            : 'More',
                                  ),
                                );
                              }
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20.h),

              ///bills, recharges and more
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    /// business text
                    Text(
                      "Bills, recharges and more",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: AppColors.whiteColor,
                      ),
                    ),

                    SizedBox(height: 20.h),

                    /// Recharge Grid
                    ChangeNotifierProvider(
                      create: (context) => RechargeGridProvider(),
                      child: Consumer<RechargeGridProvider>(
                        builder: (context, gridProvider, child) {
                          return Column(
                            children: [
                              GridView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 4,
                                      crossAxisSpacing: 8.0,
                                      mainAxisSpacing: 8.0,
                                      childAspectRatio: 0.8,
                                    ),
                                itemCount: gridProvider.visibleItems,
                                itemBuilder: (context, index) {
                                  final item = rechargeItems[index];
                                  return BusinessTile(
                                    businessAssetsImageUrl: item.imageUrl,
                                    businessName: item.name,
                                  );
                                },
                              ),

                              SizedBox(height: 12.h),

                              /// **See All / Show Less Button**
                              GestureDetector(
                                onTap:
                                    () => gridProvider.toggleGridExpansion(
                                      rechargeItems.length,
                                    ),
                                child: Container(
                                  height: 30.h,
                                  width: 80.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40.r),
                                    color: AppColors.transparentColor,
                                    border: Border.all(
                                      color: AppColors.upiBtnStrokeColor,
                                      width: 1,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      gridProvider.isExpanded
                                          ? "Show Less"
                                          : "See All", // Dynamic text
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.whiteColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20.h),

              /// promotions
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                child: SizedBox(
                  height: 120.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Promotions
                      Text(
                        "Promotions",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          color: AppColors.whiteColor,
                        ),
                      ),

                      SizedBox(height: 20.h),

                      Flexible(
                        fit: FlexFit.loose,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            final item = promotionItems[index];
                            return BusinessTile(
                              businessAssetsImageUrl: item.imageUrl,
                              businessName: item.name,
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(width: 40.w);
                          },
                          itemCount: promotionItems.length,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20.h),

              /// transaction history and balance history list tiles
              TransactionListTile(
                svgIconPath: "history",
                listTitleText: "Show transaction history",
              ),

              TransactionListTile(
                svgIconPath: "balance",
                listTitleText: "Check bank balance",
              ),

              SizedBox(height: 30.h),

              Image.asset(
                "assets/img/png/footer.png",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
