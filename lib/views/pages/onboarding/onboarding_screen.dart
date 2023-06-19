import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:when_i_work/controllers/onboarding_controller.dart';
import 'package:when_i_work/utils/size_config.dart';
import 'package:when_i_work/views/pages/auth/login/login_screen.dart';
import 'package:when_i_work/views/pages/auth/sign%20up/select_signup_screen.dart';
import '../../../constants/colors.dart';
import '../../../utils/Buttons/primary_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final pageController = PageController();
  final onboardingController = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: SizeConfig.heightMultiplier * 100,
        width: SizeConfig.widthMultiplier * 100,
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 6),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: SizeConfig.heightMultiplier * 10,
              child: Text(
                "When I Work",
                style: TextStyle(
                    fontSize: SizeConfig.textMultiplier * 2.4,
                    color: AppColors.ktext),
              ),
            ),
            PageView.builder(
              itemCount: onboardingController.onBoardingList.length,
              physics: const AlwaysScrollableScrollPhysics(),
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  onboardingController.selectedIndex.value = index;
                });
              },
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.widthMultiplier * 7,
                      right: SizeConfig.widthMultiplier * 7,
                      bottom: SizeConfig.heightMultiplier * 11),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: SizeConfig.heightMultiplier * 20),
                      LottieBuilder.asset(
                        onboardingController.onBoardingList[
                            onboardingController.selectedIndex.value]["image"],
                        height: SizeConfig.imageSizeMultiplier * 40,
                      ),
                      Text(
                        onboardingController.onBoardingList[
                            onboardingController.selectedIndex.value]["title"],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColors.ktext,
                            fontWeight: FontWeight.w500,
                            fontSize: SizeConfig.textMultiplier * 2),
                      ),
                      SizedBox(height: SizeConfig.heightMultiplier * 4),
                      Text(
                        onboardingController.onBoardingList[onboardingController
                            .selectedIndex.value]["description"],
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: AppColors.ktext),
                      ),
                    ],
                  ),
                );
              },
            ),
            Positioned(
              bottom: SizeConfig.heightMultiplier * 35,
              child: SmoothPageIndicator(
                controller: pageController,
                count: onboardingController.onBoardingList.length,
                effect: WormEffect(
                  activeDotColor: AppColors.kprimary,
                  dotColor: Colors.black26,
                  dotHeight: SizeConfig.heightMultiplier * 1,
                  dotWidth: SizeConfig.widthMultiplier * 2,
                ),
              ),
            ),
            Positioned(
              bottom: SizeConfig.heightMultiplier * 18,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  PrimaryButton(
                    callback: () {
                      Get.to(() => LoginScreen(),
                          transition: Transition.rightToLeft);
                    },
                    color: AppColors.kprimary,
                    height: SizeConfig.heightMultiplier * 6,
                    width: SizeConfig.widthMultiplier * 100,
                    title: 'Log In',
                    textcolor: Colors.white,
                    fontSize: SizeConfig.textMultiplier * 2,
                    radius: 3,
                  ),
                  SizedBox(height: SizeConfig.heightMultiplier * 2),
                  PrimaryButton(
                    callback: () {
                      Get.to(() => SelectSignUpScreen(),
                          transition: Transition.rightToLeft);
                    },
                    color: Colors.white,
                    height: SizeConfig.heightMultiplier * 6,
                    width: SizeConfig.widthMultiplier * 100,
                    title: 'Sign Up',
                    textcolor: AppColors.ktext,
                    fontSize: SizeConfig.textMultiplier * 2,
                    radius: 3,
                    borderColor: const Color(0xff9E9E9E),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
