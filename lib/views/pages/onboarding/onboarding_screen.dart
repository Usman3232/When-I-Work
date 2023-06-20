import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:when_i_work/constants/textstyles.dart';
import 'package:when_i_work/controllers/onboarding_controller.dart';
import 'package:when_i_work/utils/size_config.dart';
import 'package:when_i_work/views/pages/auth/login/login_screen.dart';
import 'package:when_i_work/views/pages/auth/sign%20up/select_signup_screen.dart';
import '../../../constants/colors.dart';
import '../../widgets/primary_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  final onboardingController = Get.put(OnboardingController());

  late Timer timer;
  @override
  void initState() {
    super.initState();
    //SETTING PAGE CONDITION THAT WILL CHANGE AFTER 3 SECONDS
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (onboardingController.selectedIndex.value < 2) {
        // print("Page next");
        onboardingController.selectedIndex.value++;
      } else {
        onboardingController.selectedIndex.value = 0;
        // print("Page first");
      }
      _pageController.animateToPage(
        onboardingController.selectedIndex.value,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
    timer.cancel();
  }

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
                style: AppTextStyles.headingSmall(),
              ),
            ),
            PageView.builder(
              itemCount: onboardingController.onBoardingList.length,
              physics: const AlwaysScrollableScrollPhysics(),
              controller: _pageController,
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
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: SizeConfig.heightMultiplier * 20),
                      LottieBuilder.asset(
                        onboardingController.onBoardingList[
                            onboardingController.selectedIndex.value]["image"],
                        height: SizeConfig.imageSizeMultiplier * 50,
                      ),
                      Text(
                        onboardingController.onBoardingList[
                            onboardingController.selectedIndex.value]["title"],
                        textAlign: TextAlign.center,
                        style: AppTextStyles.bodyMedium(),
                      ),
                      SizedBox(height: SizeConfig.heightMultiplier * 4),
                      Text(
                        onboardingController.onBoardingList[onboardingController
                            .selectedIndex.value]["description"],
                        textAlign: TextAlign.center,
                        style: AppTextStyles.bodySmall()
                            .copyWith(color: AppColors.kgreyColor),
                      ),
                    ],
                  ),
                );
              },
            ),
            Positioned(
              bottom: SizeConfig.heightMultiplier * 35,
              child: SmoothPageIndicator(
                controller: _pageController,
                count: onboardingController.onBoardingList.length,
                effect: WormEffect(
                  activeDotColor: AppColors.primaryClr,
                  dotColor: AppColors.kgreyColor,
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
                    color: AppColors.primaryClr,
                    height: SizeConfig.heightMultiplier * 6,
                    width: SizeConfig.widthMultiplier * 100,
                    title: 'Log In',
                    textcolor: AppColors.kwhiteColor,
                    fontSize: SizeConfig.textMultiplier * 2,
                    radius: 12,
                  ),
                  SizedBox(height: SizeConfig.heightMultiplier * 2),
                  PrimaryButton(
                    callback: () {
                      Get.to(() => SelectSignUpScreen(),
                          transition: Transition.rightToLeft);
                    },
                    color: AppColors.kwhiteColor,
                    height: SizeConfig.heightMultiplier * 6,
                    width: SizeConfig.widthMultiplier * 100,
                    title: 'Sign Up',
                    textcolor: AppColors.ktextColor,
                    borderColor: AppColors.ktextColor,
                    fontSize: SizeConfig.textMultiplier * 2,
                    radius: 12,
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
