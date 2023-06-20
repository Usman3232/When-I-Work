import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:when_i_work/constants/colors.dart';
import 'package:when_i_work/constants/textstyles.dart';
import 'package:when_i_work/views/widgets/primary_button.dart';
import 'package:when_i_work/views/widgets/custom_auth_textfield.dart';
import 'package:when_i_work/utils/size_config.dart';
import '../../../widgets/appbars.dart';

class CreateWorkPlaceScreen extends StatelessWidget {
  CreateWorkPlaceScreen({super.key});

  TextEditingController workplaceNameController = TextEditingController();
  TextEditingController addressController = TextEditingController();

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
            EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 4),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: SizeConfig.heightMultiplier * 3),
              Text(
                "Create New Workplace",
                style: AppTextStyles.headingSmall(),
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              Text(
                "Tell us about your business and we'll get your workplace set up.",
                style: AppTextStyles.bodyMedium(),
              ),
              const Divider(color: AppColors.kgreyColor),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Email",
                  style: AppTextStyles.bodyMedium(),
                ),
              ),
              SizedBox(height: SizeConfig.heightMultiplier * .5),
              CustomAuthTextField(
                  hintText: "Enter Workplace Name",
                  controller: workplaceNameController),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Address",
                  style: AppTextStyles.bodyMedium(),
                ),
              ),
              SizedBox(height: SizeConfig.heightMultiplier * .5),
              CustomAuthTextField(
                hintText: "Enter Address",
                controller: workplaceNameController,
                suffix: Icon(
                  FeatherIcons.search,
                  size: SizeConfig.imageSizeMultiplier * 5.5,
                  color: AppColors.kgreyColor,
                ),
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 20),
              PrimaryButton(
                callback: () {},
                height: SizeConfig.heightMultiplier * 6,
                width: SizeConfig.widthMultiplier * 100,
                title: "Create",
                textcolor: AppColors.kwhiteColor,
                radius: 12,
                color: AppColors.primaryClr,
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
            ],
          ),
        ),
      ),
    );
  }
}
