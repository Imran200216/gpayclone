import 'package:animated_icon/features/home/view/home_screen.dart';
import 'package:animated_icon/features/home/view_modals/business_grid_provider.dart';
import 'package:animated_icon/features/home/view_modals/grid_provider.dart';
import 'package:animated_icon/features/home/view_modals/recharge_grid_provider.dart';
import 'package:animated_icon/features/pagination_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        /// Grid provider
        ChangeNotifierProvider(create: (context) => GridProvider()),

        /// Business grid provider
        ChangeNotifierProvider(create: (context) => BusinessGridProvider()),

        /// Recharge grid provider
        ChangeNotifierProvider(create: (context) => RechargeGridProvider()),

        /// pagination provider
        ChangeNotifierProvider(create: (context) => PaginationProvider()),
      ],
      builder: (context, child) {
        return ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'GPay Clone',
              theme: ThemeData(textTheme: GoogleFonts.robotoTextTheme()),
              home: HomeScreen(),
            );
          },
        );
      },
    );
  }
}
