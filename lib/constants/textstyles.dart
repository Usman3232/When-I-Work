import 'package:flutter/material.dart';
import 'package:when_i_work/constants/colors.dart';
import 'package:when_i_work/utils/size_config.dart';

class AppTextStyles {
  static TextStyle bodySmall() {
    return TextStyle(
        color: AppColors.ktextColor,
        fontWeight: FontWeight.w400,
        fontSize: SizeConfig.textMultiplier * 1.6);
  }

  static TextStyle bodyMedium() {
    return TextStyle(
        color: AppColors.ktextColor,
        fontWeight: FontWeight.w400,
        fontSize: SizeConfig.textMultiplier * 1.8);
  }

  static TextStyle headingSmall() {
    return TextStyle(
        color: AppColors.ktextColor,
        fontWeight: FontWeight.w400,
        fontSize: SizeConfig.textMultiplier * 2.4);
  }

  static TextStyle headingMedium() {
    return TextStyle(
        color: AppColors.ktextColor,
        fontWeight: FontWeight.w600,
        fontSize: SizeConfig.textMultiplier * 2.9);
  }
}
