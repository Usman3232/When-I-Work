import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:when_i_work/views/pages/auth/additional%20information/additional_imformation_screen.dart';
import 'package:when_i_work/views/pages/auth/create%20workplace/create_workplace_screen.dart';
import 'package:when_i_work/views/pages/bottom%20nav%20bar/bottom_nav_bar.dart';
import 'package:when_i_work/views/pages/splash/splash_screen.dart';
import 'utils/size_config.dart';
import 'views/pages/onboarding/onboarding_screen.dart';

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
                // fontFamily: 'Kollektif',
                textTheme: TextTheme(
                  headlineSmall: TextStyle(
                    fontSize: SizeConfig.textMultiplier * 2.2,
                  ),
                ),
                scaffoldBackgroundColor: Colors.white,
              ),
              debugShowCheckedModeBanner: false,
              // home: LoginScreen()
              // home: const SplashScreen(),
              // home: CreateWorkPlaceScreen(),
              // home: AdditionalInformationScreen(),
              home: BottomNavBarScreen(),
              // home: OnboardingScreen(),
              // home: const SplashScreen(),
            );
          },
        );
      },
    );
  }
}
