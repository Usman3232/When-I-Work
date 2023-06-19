import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:when_i_work/utils/App%20Bar/appbars.dart';
import 'package:when_i_work/utils/TextFields/custom_auth_textfield.dart';
import 'package:when_i_work/utils/size_config.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.simpleappbar(context, leading: Icons.arrow_back_rounded,
          onleadingtap: () {
        Get.back();
      }, title: "Welcome", action: Icons.send, onactiontap: () {}),
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
              hintText: "Email",
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
            ),
          ],
        ),
      ),
    );
  }
}
