import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../size_config.dart';

class CustomAuthTextField extends StatefulWidget {
  const CustomAuthTextField({
    super.key,
    this.labelText,
    this.hintText,
    required this.controller,
    this.suffix,
    this.isPassword = false,
    this.keyboardType,
    this.floatingLabelColor = AppColors.kprimary,
    this.floatingLabelSize,
  });
  final String? hintText;
  final String? labelText;
  final Color floatingLabelColor;
  final double? floatingLabelSize;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final Widget? suffix;
  final bool isPassword;

  @override
  State<CustomAuthTextField> createState() => _CustomAuthTextFieldState();
}

class _CustomAuthTextFieldState extends State<CustomAuthTextField> {
  bool isObscure = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscure,
      cursorColor: const Color(0xff9E9E9E),
      cursorHeight: SizeConfig.heightMultiplier * 3,
      cursorWidth: SizeConfig.widthMultiplier * .1,
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      decoration: InputDecoration(
        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
                child: isObscure
                    ? Icon(Icons.visibility_off,
                        size: SizeConfig.imageSizeMultiplier * 5.5,
                        color: Colors.black54)
                    : Icon(Icons.visibility,
                        size: SizeConfig.imageSizeMultiplier * 5.5,
                        color: Colors.black54))
            : widget.suffix,
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: const Color(0xff9E9E9E),
          fontSize: SizeConfig.textMultiplier * 1.8,
          fontWeight: FontWeight.w400,
        ),
        labelText: widget.labelText,
        floatingLabelStyle: TextStyle(
          color: widget.floatingLabelColor,
          fontSize: widget.floatingLabelSize,
          fontWeight: FontWeight.w400,
        ),
        labelStyle: TextStyle(
          color: const Color(0xff9E9E9E),
          fontSize: SizeConfig.textMultiplier * 1.8,
          fontWeight: FontWeight.w400,
        ),
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff9E9E9E))),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.kprimary)),
      ),
      style: TextStyle(
        color: AppColors.ktext,
        fontSize: SizeConfig.textMultiplier * 1.8,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
