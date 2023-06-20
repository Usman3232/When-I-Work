import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:when_i_work/constants/colors.dart';
import 'package:when_i_work/constants/textstyles.dart';
import 'package:when_i_work/views/widgets/appbars.dart';
import 'package:when_i_work/utils/size_config.dart';
import 'package:when_i_work/views/pages/auth/sign%20up/find_invitation_screen.dart';
import 'package:when_i_work/views/pages/auth/sign%20up/signup_screen.dart';

class SelectSignUpScreen extends StatelessWidget {
  SelectSignUpScreen({super.key});

  List<String> title = ["I'm an employee", "I'm setting up my business"];
  List<String> description = [
    "I want to join my team and get my schedule.",
    "I want start my 14-days free trial to build the work schedule."
  ];
  List<String> images = [
    "assets/images/employee.png",
    "assets/images/business.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        appBar: AppBar(),
        leading: Icons.arrow_back_ios_new_rounded,
        title: "When I Work",
        onleadingtap: () {
          Get.back();
        },
      ),
      body: Container(
        height: SizeConfig.heightMultiplier * 100,
        width: SizeConfig.widthMultiplier * 100,
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: SizeConfig.heightMultiplier * 3),
            Text(
              "Welcome to When I Work!",
              style: AppTextStyles.headingSmall()
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 3),
            Text(
              "Hi there! Let's get you started based on what you want to do...",
              textAlign: TextAlign.center,
              style: AppTextStyles.bodyMedium(),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 3),
            ...List.generate(
              2,
              (index) => Padding(
                padding:
                    EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 2),
                child: InkWell(
                  onTap: () {
                    if (index == 0) {
                      Get.to(() => FindInvitationScreen(),
                          transition: Transition.rightToLeft);
                    } else {
                      Get.to(() => SignUpScreen(),
                          transition: Transition.rightToLeft);
                    }
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: SizeConfig.heightMultiplier * 25,
                        width: SizeConfig.widthMultiplier * 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.kaccentColor),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      Positioned(
                        left: SizeConfig.widthMultiplier * 4,
                        right: SizeConfig.widthMultiplier * 4,
                        top: SizeConfig.heightMultiplier * 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  title[index],
                                  style: AppTextStyles.headingSmall().copyWith(
                                      fontSize: SizeConfig.textMultiplier * 2.2,
                                      fontWeight: FontWeight.w500),
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: AppColors.ktextColor,
                                  size: SizeConfig.imageSizeMultiplier * 4.5,
                                )
                              ],
                            ),
                            SizedBox(height: SizeConfig.heightMultiplier * 2),
                            SizedBox(
                              width: SizeConfig.widthMultiplier * 70,
                              child: Text(
                                description[index],
                                style: AppTextStyles.bodyMedium(),
                              ),
                            ),
                            // const Spacer(),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: SizeConfig.heightMultiplier * -3.8,
                        child: Image.asset(images[index],
                            height: SizeConfig.heightMultiplier * 21),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
