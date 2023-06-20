import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import 'package:when_i_work/utils/size_config.dart';

class SignWithGoogleWidget extends StatelessWidget {
  const SignWithGoogleWidget({
    super.key,
    required this.width,
    required this.ontap,
    required this.title,
  });
  final String title;
  final double width;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: SizeConfig.heightMultiplier * 4,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.kgreyColor),
        ),
        child: Row(
          children: [
            Image.asset("assets/icons/google.png"),
            const VerticalDivider(
              color: Color(0xff9E9E9E),
              width: 0,
              thickness: 1,
            ),
            const Spacer(),
            Text(
              title,
              style: const TextStyle(
                  color: AppColors.ktextColor, fontWeight: FontWeight.w500),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
