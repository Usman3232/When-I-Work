import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:when_i_work/constants/textstyles.dart';
import 'package:when_i_work/views/widgets/appbars.dart';
import 'package:when_i_work/views/widgets/primary_button.dart';
import 'package:when_i_work/views/widgets/custom_auth_textfield.dart';
import 'package:when_i_work/utils/size_config.dart';
import '../../../../constants/colors.dart';

class FindInvitationScreen extends StatelessWidget {
  FindInvitationScreen({super.key});
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        appBar: AppBar(),
        leading: Icons.arrow_back_ios_new_rounded,
        title: "Find my invitation",
        onleadingtap: () {
          Get.back();
        },
      ),
      bottomSheet: PrimaryButton(
        callback: () {},
        color: AppColors.primaryClr,
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
              style: AppTextStyles.bodyMedium(),
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
