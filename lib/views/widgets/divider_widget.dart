import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../utils/size_config.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 0,
      color: AppColors.kgreyColor,
      thickness: SizeConfig.heightMultiplier * .1,
    );
  }
}
