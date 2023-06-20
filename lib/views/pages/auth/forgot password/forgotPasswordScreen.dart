import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:when_i_work/views/widgets/appbars.dart';
import 'package:when_i_work/views/widgets/custom_auth_textfield.dart';
import 'package:when_i_work/utils/size_config.dart';

import '../../../../constants/textstyles.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
        action: Icons.send,
        onactiontap: () {},
      ),
      body: Container(
        height: SizeConfig.heightMultiplier * 100,
        width: SizeConfig.widthMultiplier * 100,
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.widthMultiplier * 4,
            vertical: SizeConfig.heightMultiplier * 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Email",
              style: AppTextStyles.bodyMedium(),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * .5),
            CustomAuthTextField(
                hintText: "Enter Your Email",
                controller: emailController,
                keyboardType: TextInputType.emailAddress),
          ],
        ),
      ),
    );
  }
}
