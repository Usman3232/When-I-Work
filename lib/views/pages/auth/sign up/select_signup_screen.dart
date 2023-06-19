import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:when_i_work/constants/colors.dart';
import 'package:when_i_work/utils/App%20Bar/appbars.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.simpleappbar(context, leading: Icons.arrow_back_rounded,
          onleadingtap: () {
        Get.back();
      }, title: "When I Work"),
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
              style: TextStyle(
                  color: AppColors.ktext,
                  fontWeight: FontWeight.w500,
                  fontSize: SizeConfig.textMultiplier * 2.6),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 3),
            Text(
              "Hi there! Let's get you started based on what you want to do...",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.ktext,
                  fontWeight: FontWeight.w400,
                  fontSize: SizeConfig.textMultiplier * 1.9),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 3),
            ...List.generate(
                2,
                (index) => Padding(
                      padding: EdgeInsets.only(
                          bottom: SizeConfig.heightMultiplier * 2),
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
                        child: Container(
                          height: SizeConfig.heightMultiplier * 25,
                          width: SizeConfig.widthMultiplier * 100,
                          padding: EdgeInsets.only(
                              left: SizeConfig.widthMultiplier * 4,
                              right: SizeConfig.widthMultiplier * 4,
                              top: SizeConfig.heightMultiplier * 2),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black26),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    title[index],
                                    style: TextStyle(
                                        color: AppColors.ktext,
                                        fontWeight: FontWeight.w500,
                                        fontSize:
                                            SizeConfig.textMultiplier * 2.2),
                                  ),
                                  const Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Colors.black54,
                                    size: SizeConfig.imageSizeMultiplier * 4.5,
                                  )
                                ],
                              ),
                              SizedBox(height: SizeConfig.heightMultiplier * 2),
                              SizedBox(
                                width: SizeConfig.widthMultiplier * 70,
                                child: Text(
                                  description[index],
                                  style: TextStyle(
                                      color: AppColors.ktext,
                                      fontWeight: FontWeight.w400,
                                      fontSize:
                                          SizeConfig.textMultiplier * 1.9),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ))
          ],
        ),
      ),
    );
  }
}
