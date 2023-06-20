import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:when_i_work/constants/colors.dart';
import 'package:when_i_work/utils/size_config.dart';

class RefreshWidget extends StatelessWidget {
  const RefreshWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpinKitThreeBounce(
      size: SizeConfig.imageSizeMultiplier * 6,
      itemBuilder: (context, index) {
        return const DecoratedBox(
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: AppColors.primaryClr));
      },
    );
  }
}
