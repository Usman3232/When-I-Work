import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:when_i_work/constants/colors.dart';
import 'package:when_i_work/utils/App%20Bar/appbars.dart';
import 'package:when_i_work/utils/TextFields/custom_auth_textfield.dart';
import 'package:when_i_work/utils/size_config.dart';
import 'package:when_i_work/views/widgets/sign_with_google_widget.dart';

import '../../../../utils/Buttons/primary_button.dart';

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
      appBar: MyAppBar.simpleappbar(context, leading: Icons.arrow_back_rounded,
          onleadingtap: () {
        Get.back();
      }, title: "Sign Up"),
      bottomSheet: PrimaryButton(
        callback: () {},
        color: AppColors.kprimary,
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
            CustomAuthTextField(
              controller: nameController,
              labelText: "Full Name",
              floatingLabelSize: SizeConfig.textMultiplier * 1.8,
            ),
            CustomAuthTextField(
              controller: nameController,
              labelText: "Email",
              floatingLabelSize: SizeConfig.textMultiplier * 1.8,
            ),
            CustomAuthTextField(
              controller: nameController,
              labelText: "Mobile Number",
              floatingLabelSize: SizeConfig.textMultiplier * 1.8,
            ),
            CustomAuthTextField(
              controller: nameController,
              labelText: "Create Password",
              floatingLabelSize: SizeConfig.textMultiplier * 1.8,
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 1),
            Text(
              "Your password must be at least 10 characters, and cannot contain your email address or common phrares.",
              style: TextStyle(
                  fontSize: SizeConfig.textMultiplier * 1.6,
                  color: AppColors.ktext),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 3),
            Row(
              children: [
                Checkbox(
                  activeColor: AppColors.kprimary,
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
                  style: TextStyle(
                      fontSize: SizeConfig.textMultiplier * 1.9,
                      color: AppColors.ktext),
                ),
                Text(
                  " terms ",
                  style: TextStyle(
                      fontSize: SizeConfig.textMultiplier * 1.9,
                      color: AppColors.kprimary),
                ),
                Text(
                  "and",
                  style: TextStyle(
                      fontSize: SizeConfig.textMultiplier * 1.9,
                      color: AppColors.ktext),
                ),
                Text(
                  " privacy policy",
                  style: TextStyle(
                      fontSize: SizeConfig.textMultiplier * 1.9,
                      color: AppColors.kprimary),
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
