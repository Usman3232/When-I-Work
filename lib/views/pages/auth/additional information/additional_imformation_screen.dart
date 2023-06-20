import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:when_i_work/constants/colors.dart';
import 'package:when_i_work/constants/textstyles.dart';
import 'package:when_i_work/controllers/additional_information_controller.dart';
import 'package:when_i_work/views/widgets/primary_button.dart';
import 'package:when_i_work/views/widgets/custom_dropdownfield.dart';
import 'package:when_i_work/utils/size_config.dart';
import '../../../widgets/appbars.dart';

class AdditionalInformationScreen extends StatelessWidget {
  AdditionalInformationScreen({super.key});
  final additionalController = Get.put(AdditionalInformationController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
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
                  "Additional Information",
                  style: AppTextStyles.headingSmall(),
                ),
                SizedBox(height: SizeConfig.heightMultiplier * 2),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Number of  Employees",
                    style: AppTextStyles.bodyMedium(),
                  ),
                ),
                SizedBox(height: SizeConfig.heightMultiplier * .5),
                CustomDropDownField(
                  hinttext: "Select Number",
                  listdata: additionalController.numberOfEmployees,
                  currentSelectedValue:
                      additionalController.selectedNumberofEmployees.value == ""
                          ? null
                          : additionalController
                              .selectedNumberofEmployees.value,
                  onChanged: (value) {
                    additionalController.selectedNumberofEmployees.value =
                        value.toString();
                  },
                ),
                SizedBox(height: SizeConfig.heightMultiplier * 2),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "How Did you Hear About us?",
                    style: AppTextStyles.bodyMedium(),
                  ),
                ),
                SizedBox(height: SizeConfig.heightMultiplier * .5),
                CustomDropDownField(
                  hinttext: "About US",
                  listdata: additionalController.hearAboutUs,
                  currentSelectedValue:
                      additionalController.selectedHearAboutUs.value == ""
                          ? null
                          : additionalController.selectedHearAboutUs.value,
                  onChanged: (value) {
                    additionalController.selectedHearAboutUs.value =
                        value.toString();
                  },
                ),
                SizedBox(height: SizeConfig.heightMultiplier * 20),
                PrimaryButton(
                  callback: () {},
                  height: SizeConfig.heightMultiplier * 6,
                  width: SizeConfig.widthMultiplier * 100,
                  title: "Start Scheduling",
                  textcolor: AppColors.kwhiteColor,
                  radius: 12,
                  color: AppColors.primaryClr,
                ),
                SizedBox(height: SizeConfig.heightMultiplier * 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
