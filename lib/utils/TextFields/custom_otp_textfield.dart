// import 'package:flutter/material.dart';
// import 'package:taxi_app/Constants/colors.dart';
// import 'package:taxi_app/Utils/size_config.dart';

// class CustomOtpTextField extends StatefulWidget {
//   const CustomOtpTextField({
//     super.key,
//     required this.controller,
//     this.isobsecure = false,
//   });
//   final TextEditingController controller;
//   final bool isobsecure;
//   @override
//   State<CustomOtpTextField> createState() => _CustomOtpTextFieldState();
// }

// class _CustomOtpTextFieldState extends State<CustomOtpTextField> {
//   FocusNode _focus = FocusNode();
//   bool check = false;

//   @override
//   void initState() {
//     super.initState();
//     _focus.addListener(_onFocusChange);
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _focus.removeListener(_onFocusChange);
//     _focus.dispose();
//   }

//   void _onFocusChange() {
//     debugPrint("Focus: ${_focus.hasFocus.toString()}");
//     setState(() {
//       check = _focus.hasFocus;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       focusNode: _focus,
//       onChanged: (value) {
//         if (value.length == 1) {
//           FocusScope.of(context).nextFocus();
//         }
//       },
//       obscureText: widget.isobsecure,
//       autofocus: true,
//       obscuringCharacter: "\$",
//       cursorColor: Colors.black,
//       keyboardType: TextInputType.number,
//       controller: widget.controller,
//       decoration: InputDecoration(
//         fillColor: check
//             ? Theme.of(context).focusColor
//             : Theme.of(context).secondaryHeaderColor,
//         filled: true,
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: const BorderSide(
//             color: Colors.transparent,
//             width: 1.5,
//           ),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: const BorderSide(
//             color: AppColors.primary,
//             width: 1.5,
//           ),
//         ),
//       ),
//       textAlign: TextAlign.center,
//       style: TextStyle(
//         color: AppColors.blackText,
//         fontSize: SizeConfig.textMultiplier * 1.8,
//         fontWeight: FontWeight.bold,
//       ),
//     );
//   }
// }
