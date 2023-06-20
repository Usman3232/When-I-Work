import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:when_i_work/constants/colors.dart';
import 'package:when_i_work/constants/textstyles.dart';
import 'package:when_i_work/views/widgets/appbars.dart';
import 'package:when_i_work/views/widgets/primary_button.dart';
import 'package:when_i_work/views/widgets/custom_auth_textfield.dart';
import 'package:when_i_work/utils/size_config.dart';
import 'package:when_i_work/views/pages/auth/forgot%20password/forgotPasswordScreen.dart';
import '../../../widgets/sign_with_google_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        appBar: AppBar(),
        leading: Icons.arrow_back_ios_new_rounded,
        title: "Welcome",
        onleadingtap: () {
          Get.back();
        },
      ),
      body: Container(
        height: SizeConfig.heightMultiplier * 100,
        width: SizeConfig.widthMultiplier * 100,
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.widthMultiplier * 4,
            vertical: SizeConfig.heightMultiplier * 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Email",
                style: AppTextStyles.bodyMedium(),
              ),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * .5),
            CustomAuthTextField(
                hintText: "Enter Your Email",
                controller: emailController,
                keyboardType: TextInputType.emailAddress),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Password",
                style: AppTextStyles.bodyMedium(),
              ),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * .5),
            CustomAuthTextField(
                hintText: "Enter Your Password",
                isPassword: true,
                controller: passwordController,
                keyboardType: TextInputType.number),
            SizedBox(height: SizeConfig.heightMultiplier * 1),
            PrimaryButton(
              callback: () {},
              color: AppColors.primaryClr,
              height: SizeConfig.heightMultiplier * 6,
              width: SizeConfig.widthMultiplier * 100,
              radius: 12,
              title: "Log In",
              fontSize: SizeConfig.textMultiplier * 2,
              textcolor: Colors.white,
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 3),
            GestureDetector(
              onTap: () {
                Get.to(() => ForgotPasswordScreen(),
                    transition: Transition.rightToLeft);
              },
              child: Text(
                "Forgot password?",
                style: AppTextStyles.bodySmall()
                    .copyWith(color: AppColors.kSecondaryColor),
              ),
            ),
            const Spacer(),
            const Text(
              "Or log in with your Google account:",
              style: TextStyle(color: AppColors.kgreyColor),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 1),
            SignWithGoogleWidget(
              title: "Sign in with Google",
              width: SizeConfig.widthMultiplier * 65,
              ontap: () {},
            )
          ],
        ),
      ),
    );
  }
}
