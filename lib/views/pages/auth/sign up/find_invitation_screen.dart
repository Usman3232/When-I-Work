import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:when_i_work/utils/App%20Bar/appbars.dart';
import 'package:when_i_work/utils/Buttons/primary_button.dart';
import 'package:when_i_work/utils/TextFields/custom_auth_textfield.dart';
import 'package:when_i_work/utils/size_config.dart';
import '../../../../constants/colors.dart';

class FindInvitationScreen extends StatelessWidget {
  FindInvitationScreen({super.key});
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.simpleappbar(context, leading: Icons.arrow_back_rounded,
          onleadingtap: () {
        Get.back();
      }, title: "Find my invitation"),
      bottomSheet: PrimaryButton(
        callback: () {},
        color: AppColors.kprimary,
        height: SizeConfig.heightMultiplier * 6,
        width: SizeConfig.widthMultiplier * 100,
        title: "Check for Invite",
        textcolor: Colors.white,
      ),
      body: Container(
        height: SizeConfig.heightMultiplier * 100,
        width: SizeConfig.widthMultiplier * 100,
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: SizeConfig.heightMultiplier * 3),
            Text(
              "Enter your email address or mobile number and we'll check to see if you've invited to join your team.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.ktext,
                  fontWeight: FontWeight.w400,
                  fontSize: SizeConfig.textMultiplier * 1.9),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 3),
            CustomAuthTextField(
              controller: emailController,
              hintText: "Email or mobile number",
            )
          ],
        ),
      ),
    );
  }
}
