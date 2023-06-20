import 'package:flutter/material.dart';
import '../../Constants/colors.dart';
import '../../utils/size_config.dart';

class CustomAuthTextField extends StatefulWidget {
  const CustomAuthTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.suffix,
    // this.onChange,
    this.isPassword = false,
    this.keyboardType,
  });
  final String hintText;
  final TextEditingController controller;
  final Widget? suffix;
  final bool isPassword;
  final TextInputType? keyboardType;
  // final Function? onChange;
  @override
  State<CustomAuthTextField> createState() => _CustomAuthTextFieldState();
}

class _CustomAuthTextFieldState extends State<CustomAuthTextField> {
  bool isObscure = false;
  final FocusNode _focus = FocusNode();
  bool check = false;

  @override
  void initState() {
    super.initState();
    _focus.addListener(_onFocusChange);
    isObscure = widget.isPassword == true;
  }

  @override
  void dispose() {
    super.dispose();
    _focus.removeListener(_onFocusChange);
    _focus.dispose();
  }

  void _onFocusChange() {
    debugPrint("Focus: ${_focus.hasFocus.toString()}");
    setState(() {
      check = _focus.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: _focus,
      obscureText: isObscure,
      cursorColor: Colors.black,
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        helperText: "",
        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
                child: isObscure
                    ? Icon(
                        Icons.visibility_off,
                        size: SizeConfig.imageSizeMultiplier * 5.5,
                        color:
                            check ? AppColors.primaryClr : AppColors.kgreyColor,
                      )
                    : Icon(
                        Icons.visibility,
                        size: SizeConfig.imageSizeMultiplier * 5.5,
                        color:
                            check ? AppColors.primaryClr : AppColors.kgreyColor,
                      ))
            : widget.suffix,
        fillColor: check ? AppColors.primaryClr.withOpacity(.1) : Colors.white,
        filled: true,
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: AppColors.kgreyColor,
          fontSize: SizeConfig.textMultiplier * 1.8,
          fontWeight: FontWeight.w400,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Color(0xffEEF3F7),
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: AppColors.primaryClr,
            width: 1,
          ),
        ),
      ),
      style: TextStyle(
        color: AppColors.ktextColor,
        fontSize: SizeConfig.textMultiplier * 1.8,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
