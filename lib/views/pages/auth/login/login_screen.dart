import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:when_i_work/constants/colors.dart';
import 'package:when_i_work/utils/App%20Bar/appbars.dart';
import 'package:when_i_work/utils/Buttons/primary_button.dart';
import 'package:when_i_work/utils/TextFields/custom_auth_textfield.dart';
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
      appBar: MyAppBar.simpleappbar(context, leading: Icons.arrow_back_rounded,
          onleadingtap: () {
        Get.back();
      }, title: "Welcome"),
      body: Container(
        height: SizeConfig.heightMultiplier * 100,
        width: SizeConfig.widthMultiplier * 100,
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.widthMultiplier * 4,
            vertical: SizeConfig.heightMultiplier * 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomAuthTextField(
              labelText: "Email",
              floatingLabelSize: SizeConfig.textMultiplier * 2.4,
              floatingLabelColor: const Color(0xff9E9E9E),
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
            ),
            CustomAuthTextField(
              labelText: "Password",
              floatingLabelSize: SizeConfig.textMultiplier * 2.4,
              floatingLabelColor: const Color(0xff9E9E9E),
              controller: passwordController,
              keyboardType: TextInputType.number,
              isPassword: true,
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 1),
            PrimaryButton(
              callback: () {},
              color: AppColors.kprimary,
              height: SizeConfig.heightMultiplier * 6,
              width: SizeConfig.widthMultiplier * 100,
              radius: 3,
              title: "Log In",
              textcolor: Colors.white,
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 3),
            GestureDetector(
              onTap: () {
                Get.to(() => ForgotPasswordScreen(),
                    transition: Transition.rightToLeft);
              },
              child: const Text(
                "Forgot password?",
                style: TextStyle(color: AppColors.kprimary),
              ),
            ),
            const Spacer(),
            const Text(
              "Or log in with your Google account:",
              style: TextStyle(color: Color(0xff9E9E9E)),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 1),
            SignWithGoogleWidget(
              title: "Sign in with Google",
              width: SizeConfig.widthMultiplier * 60,
              ontap: () {},
            )
          ],
        ),
      ),
    );
  }
}
