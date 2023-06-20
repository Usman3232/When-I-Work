import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:when_i_work/constants/colors.dart';
import 'package:when_i_work/views/widgets/appbars.dart';
import 'package:when_i_work/views/widgets/custom_auth_textfield.dart';
import 'package:when_i_work/utils/size_config.dart';
import 'package:when_i_work/views/widgets/sign_with_google_widget.dart';

import '../../../../constants/textstyles.dart';
import '../../../widgets/primary_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool privacyPolicy = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        appBar: AppBar(),
        leading: Icons.arrow_back_ios_new_rounded,
        title: "Sign Up",
        onleadingtap: () {
          Get.back();
        },
      ),
      bottomSheet: PrimaryButton(
        callback: () {},
        color: AppColors.primaryClr,
        height: SizeConfig.heightMultiplier * 6,
        width: SizeConfig.widthMultiplier * 100,
        title: "Sign Up",
        textcolor: Colors.white,
      ),
      body: Container(
        height: SizeConfig.heightMultiplier * 100,
        width: SizeConfig.widthMultiplier * 100,
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 4),
        child: Column(
          children: [
            SizedBox(height: SizeConfig.heightMultiplier * 2),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Name",
                style: AppTextStyles.bodyMedium(),
              ),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * .5),
            CustomAuthTextField(
              controller: nameController,
              hintText: "Enter Full Name",
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Email",
                style: AppTextStyles.bodyMedium(),
              ),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * .5),
            CustomAuthTextField(
              controller: emailController,
              hintText: "Enter Your Email",
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Number",
                style: AppTextStyles.bodyMedium(),
              ),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * .5),
            CustomAuthTextField(
              controller: numberController,
              hintText: "Enter Mobile Number",
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Password",
                style: AppTextStyles.bodyMedium(),
              ),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * .5),
            CustomAuthTextField(
              controller: passwordController,
              hintText: "Create Password",
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 1),
            Text(
              "Your password must be at least 10 characters, and cannot contain your email address or common phrares.",
              style: AppTextStyles.bodySmall()
                  .copyWith(color: AppColors.kgreyColor),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 3),
            Row(
              children: [
                Checkbox(
                  activeColor: AppColors.primaryClr,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3)),
                  value: privacyPolicy,
                  onChanged: (value) {
                    setState(() {
                      privacyPolicy = value!;
                    });
                  },
                ),
                Text(
                  "I accept the",
                  style: AppTextStyles.bodyMedium(),
                ),
                Text(
                  " terms ",
                  style: AppTextStyles.bodyMedium()
                      .copyWith(color: AppColors.kSecondaryColor),
                ),
                Text(
                  "and",
                  style: AppTextStyles.bodyMedium(),
                ),
                Text(
                  " privacy policy",
                  style: AppTextStyles.bodyMedium()
                      .copyWith(color: AppColors.kSecondaryColor),
                ),
              ],
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 3),
            SignWithGoogleWidget(
              title: "Sign up with Google",
              width: SizeConfig.widthMultiplier * 100,
              ontap: () {},
            )
          ],
        ),
      ),
    );
  }
}
