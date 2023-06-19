import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:when_i_work/views/pages/auth/login/login_screen.dart';
import 'package:when_i_work/views/pages/onboarding/onboarding_screen.dart';
import 'package:when_i_work/views/pages/splash/splash_screen.dart';

import 'utils/size_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return GetMaterialApp(
              theme: ThemeData(
                // fontFamily: 'Poppins',
                // primaryColor: AppColors.primary,
                scaffoldBackgroundColor: Colors.white,
              ),
              debugShowCheckedModeBanner: false,
              // home: LoginScreen()
              home: SplashScreen(),
              // home: OnboardingScreen(),
              // home: const SplashScreen(),
            );
          },
        );
      },
    );
  }
}
