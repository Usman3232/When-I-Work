import 'package:flutter/material.dart';
import 'package:when_i_work/constants/textstyles.dart';
import '../../constants/colors.dart';
import '../../utils/size_config.dart';

class CustomDropDownField extends StatelessWidget {
  CustomDropDownField({
    super.key,
    this.currentSelectedValue,
    required this.listdata,
    this.onChanged,
    this.hinttext,
  });
  final String? hinttext;
  final String? currentSelectedValue;
  final List<String> listdata;
  Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.heightMultiplier * 7.5,
      child: InputDecorator(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: AppColors.kgreyColor,
              width: 1,
            ),
          ),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            icon: const Icon(
              Icons.arrow_drop_down_rounded,
            ),
            hint: Text(hinttext.toString(),
                style: AppTextStyles.bodySmall()
                    .copyWith(color: AppColors.kgreyColor)),
            value: currentSelectedValue,
            onChanged: onChanged,
            items: listdata.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: AppTextStyles.bodySmall()
                      .copyWith(fontSize: SizeConfig.textMultiplier * 1.4),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
