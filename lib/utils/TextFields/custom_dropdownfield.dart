import 'package:flutter/material.dart';
import '../size_config.dart';

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
        decoration: const InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff9E9E9E),
              width: 1,
            ),
          ),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            icon: const Icon(
              Icons.arrow_drop_down_rounded,
            ),
            hint: Text(
              hinttext.toString(),
              style: TextStyle(
                color: const Color(0xff9E9E9E),
                fontSize: SizeConfig.textMultiplier * 1.8,
                fontWeight: FontWeight.w400,
              ),
            ),
            value: currentSelectedValue,
            onChanged: onChanged,
            items: listdata.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
