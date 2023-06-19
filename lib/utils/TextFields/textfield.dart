// import 'package:flutter/material.dart';
// import 'package:taxi_app/Constants/colors.dart';
// import 'package:taxi_app/Utils/size_config.dart';

// class AppTextField extends TextFormField {
//   AppTextField({super.key});
//   // FocusNode _focus = FocusNode();
//   static simpleField(BuildContext context,
//       {required String hintText,
//       required TextEditingController controller,
//       bool readOnly = false,
//       int? maxLength,
//       int? maxLines,
//       Function? onTap,
//       bool isprefix = false,
//       bool issuffix = false,
//       IconData? prefixicon,
//       IconData? suffixicon,
//       VoidCallback? issuffixtapped}) {
//     return TextFormField(
//       keyboardType: TextInputType.text,
//       controller: controller,
//       readOnly: readOnly,
//       validator: (value) {
//         if (value!.isEmpty) {
//           return "Please $hintText";
//         }
//         return null;
//       },
//       decoration: InputDecoration(
//         filled: true,
//         prefixIcon: isprefix
//             ? Icon(
//                 prefixicon,
//                 // color: Colors.black38,
//                 size: SizeConfig.imageSizeMultiplier * 6,
//               )
//             : null,
//         suffixIcon: issuffix
//             ? IconButton(
//                 onPressed: issuffixtapped,
//                 splashRadius: 25,
//                 icon: Icon(
//                   suffixicon,
//                   // color: Colors.black38,
//                   size: SizeConfig.imageSizeMultiplier * 6,
//                 ))
//             : null,
//         helperText: "",
//         hintText: hintText,
//         hintStyle: TextStyle(
//           color: AppColors.greyText,
//           fontSize: SizeConfig.textMultiplier * 1.8,
//           fontWeight: FontWeight.w400,
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: const BorderSide(
//             color: AppColors.transparent,
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
//         errorStyle: TextStyle(
//           color: AppColors.error,
//           fontSize: SizeConfig.textMultiplier * 1.4,
//           fontWeight: FontWeight.w400,
//         ),
//       ),
//       maxLength: maxLength,
//       maxLines: maxLines,
//       style: TextStyle(
//         color: AppColors.blackText,
//         fontSize: SizeConfig.textMultiplier * 1.8,
//         fontWeight: FontWeight.w400,
//       ),
//       onTap: () {
//         onTap!();
//       },
//     );
//   }

//   static searchField(
//     BuildContext context, {
//     required String hintText,
//     required TextEditingController controller,
//   }) {
//     // SizeConfig().init(context);
//     return TextFormField(
//       keyboardType: TextInputType.text,
//       controller: controller,
//       validator: (value) {
//         if (value!.isEmpty) {
//           return "Please $hintText";
//         }
//         return null;
//       },
//       decoration: InputDecoration(
//         hintText: hintText,
//         hintStyle: TextStyle(
//           color: AppColors.greyText,
//           fontSize: SizeConfig.textMultiplier * 1.8,
//           fontWeight: FontWeight.w400,
//         ),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10.0),
//           borderSide: BorderSide.none,
//         ),
//         errorStyle: TextStyle(
//           color: AppColors.error,
//           fontSize: SizeConfig.textMultiplier * 1.4,
//           fontWeight: FontWeight.w400,
//         ),
//         fillColor: AppColors.secondary,
//         filled: true,
//         isCollapsed: true,
//         isDense: true,
//         contentPadding:
//             const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
//         prefixIcon: Icon(
//           Icons.search,
//           size: 30,
//           color: AppColors.greyText.withOpacity(0.7),
//         ),
//       ),
//       textAlignVertical: TextAlignVertical.center,
//       textAlign: TextAlign.start,
//       style: TextStyle(
//         color: AppColors.blackText,
//         fontSize: SizeConfig.textMultiplier * 1.8,
//         fontWeight: FontWeight.w400,
//       ),
//     );
//   }

//   static charMassageField(
//     BuildContext context, {
//     required String hintText,
//     required TextEditingController controller,
//     Function? onChanged,
//   }) {
//     // SizeConfig().init(context);
//     return TextFormField(
//       keyboardType: TextInputType.text,
//       controller: controller,
//       decoration: InputDecoration(
//         hintText: hintText,
//         hintStyle: TextStyle(
//           color: AppColors.greyText,
//           fontSize: SizeConfig.textMultiplier * 1.8,
//           fontWeight: FontWeight.w400,
//         ),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10.0),
//           borderSide: BorderSide.none,
//         ),
//         errorStyle: TextStyle(
//           color: AppColors.error,
//           fontSize: SizeConfig.textMultiplier * 1.4,
//           fontWeight: FontWeight.w400,
//         ),
//         fillColor: AppColors.secondary,
//         filled: true,
//         isCollapsed: true,
//         isDense: true,
//         contentPadding:
//             const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
//       ),
//       textAlignVertical: TextAlignVertical.center,
//       textAlign: TextAlign.start,
//       style: TextStyle(
//         color: AppColors.blackText,
//         fontSize: SizeConfig.textMultiplier * 1.8,
//         fontWeight: FontWeight.w400,
//       ),
//       onChanged: (value) => onChanged!(value),
//     );
//   }

//   static phoneNumberField(
//     BuildContext context, {
//     required String hintText,
//     required TextEditingController controller,
//   }) {
//     // SizeConfig().init(context);
//     return TextFormField(
//       keyboardType: TextInputType.phone,
//       controller: controller,
//       validator: (value) {
//         if (value!.isEmpty) {
//           return "Please enter your phone number";
//         } else if (value[0] == "0") {
//           return "Invalid phone number";
//         }
//         return null;
//       },
//       decoration: InputDecoration(
//         filled: true,
//         helperText: "",
//         hintText: hintText,
//         hintStyle: TextStyle(
//           color: AppColors.greyText,
//           fontSize: SizeConfig.textMultiplier * 1.8,
//           fontWeight: FontWeight.w400,
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: const BorderSide(
//             color: Colors.transparent,
//             // width: 1.5,
//           ),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: const BorderSide(
//             color: AppColors.primary,
//             width: 1.5,
//           ),
//         ),
//         errorStyle: TextStyle(
//           color: AppColors.error,
//           fontSize: SizeConfig.textMultiplier * 1.4,
//           fontWeight: FontWeight.w400,
//         ),
//       ),
//       style: TextStyle(
//         color: AppColors.blackText,
//         fontSize: SizeConfig.textMultiplier * 1.8,
//         fontWeight: FontWeight.w400,
//       ),
//     );
//   }



//   static usernameField(
//     BuildContext context, {
//     required String hintText,
//     required TextEditingController controller,
//     required bool isValidUserName,
//     required bool isShowSuffix,
//     Function? onChange,
//   }) {
//     // SizeConfig().init(context);
//     return TextFormField(
//       keyboardType: TextInputType.text,
//       controller: controller,
//       validator: (value) {
//         if (value!.isEmpty) {
//           return "Please enter your username";
//         }
//         return null;
//       },
//       decoration: InputDecoration(
//         helperText: "",
//         filled: true,
//         hintText: hintText,
//         hintStyle: TextStyle(
//           color: AppColors.greyText,
//           fontSize: SizeConfig.textMultiplier * 1.8,
//           fontWeight: FontWeight.w400,
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: const BorderSide(
//             color: Colors.transparent,
//             // width: 1.5,
//           ),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: const BorderSide(
//             color: AppColors.primary,
//             width: 1.5,
//           ),
//         ),
//         errorStyle: TextStyle(
//           color: AppColors.error,
//           fontSize: SizeConfig.textMultiplier * 1.4,
//           fontWeight: FontWeight.w400,
//         ),
//         suffixIcon: isShowSuffix
//             ? isValidUserName
//                 ? const Icon(
//                     Icons.close,
//                     color: AppColors.error,
//                   )
//                 : const Icon(
//                     Icons.check,
//                     color: AppColors.success,
//                   )
//             : null,
//       ),
//       style: TextStyle(
//         color: AppColors.blackText,
//         fontSize: SizeConfig.textMultiplier * 1.8,
//         fontWeight: FontWeight.w400,
//       ),
//       onChanged: (value) {
//         onChange!(value);
//       },
//     );
//   }

//   static emailField(
//     BuildContext context, {
//     required String hintText,
//     required TextEditingController controller,
//     required bool isprefix,
//     required bool issuffix,
//     Function? onChange,
//   }) {
//     return TextFormField(
//       cursorColor: Colors.black,
//       keyboardType: TextInputType.emailAddress,
//       controller: controller,
//       validator: (value) {
//         print(value);
//         if (value == null || value.isEmpty) {
//           return "Please enter your email address";
//         } else {
//           String pattern =
//               r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
//           RegExp regex = RegExp(pattern);
//           if (!regex.hasMatch(value)) {
//             return 'Enter a valid email address';
//           }
//         }
//         return null;
//       },
//       decoration: InputDecoration(
//         helperText: "",
//         prefixIcon: isprefix
//             ? Icon(
//                 Icons.email_rounded,
//                 // color: Colors.black38,
//                 size: SizeConfig.imageSizeMultiplier * 6,
//               )
//             : null,
//         suffixIcon: issuffix
//             ? Icon(
//                 Icons.email_rounded,
//                 // color: Colors.black38,
//                 size: SizeConfig.imageSizeMultiplier * 6,
//               )
//             : null,
//         focusColor: AppColors.primary,
//         filled: true,
//         hintText: hintText,
//         hintStyle: TextStyle(
//           color: AppColors.greyText,
//           fontSize: SizeConfig.textMultiplier * 1.8,
//           fontWeight: FontWeight.w400,
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: BorderSide(
//             color: Colors.transparent,
//             // width: 1.5,
//           ),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: BorderSide(
//             color: AppColors.primary,
//             width: 1.5,
//           ),
//         ),
//         errorStyle: TextStyle(
//           color: AppColors.error,
//           fontSize: SizeConfig.textMultiplier * 1.4,
//           fontWeight: FontWeight.w400,
//         ),
//       ),
//       style: TextStyle(
//         color: AppColors.blackText,
//         fontSize: SizeConfig.textMultiplier * 1.8,
//         fontWeight: FontWeight.w400,
//       ),
//     );
//   }

//   static passwordField(
//     BuildContext context, {
//     required String hintText,
//     String? errorText,
//     required TextEditingController controller,
//     required bool isVisiable,
//     required VoidCallback callback,
//   }) {
//     // SizeConfig().init(context);
//     return TextFormField(
//       keyboardType: TextInputType.visiblePassword,
//       controller: controller,
//       validator: (value) {
//         if (value == null || value.isEmpty) {
//           return errorText ?? "Please enter your password";
//         } else {
//           String pattern =
//               r"^(?=.*?[A-Z])(?=(.*[a-z]){1,})(?=(.*[\d]){1,})(?=(.*[\W]){1,})(?!.*\s).{8,}$";
//           RegExp regex = RegExp(pattern);
//           if (!regex.hasMatch(value)) {
//             return 'Invalid Password: Minimum of 8 Characters,1 Uppercase,\n1 Number, 1 Special Character';
//           }
//         }

//         return null;
//       },
//       obscureText: !isVisiable,
//       cursorColor: Colors.black,
//       decoration: InputDecoration(
//         helperText: "",
//         filled: true,
//         // fillColor: AppColors.primary,
//         hintText: hintText,
//         hintStyle: TextStyle(
//           color: AppColors.greyText,
//           fontSize: SizeConfig.textMultiplier * 1.8,
//           fontWeight: FontWeight.w400,
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: const BorderSide(
//             color: AppColors.transparent,
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
//         errorStyle: TextStyle(
//           color: AppColors.error,
//           fontSize: SizeConfig.textMultiplier * 1.4,
//           fontWeight: FontWeight.w400,
//         ),
//         prefixIcon: Icon(
//           Icons.lock,
//           // color: Colors.black38,
//           size: SizeConfig.imageSizeMultiplier * 6,
//         ),
//         suffixIcon: IconButton(
//           onPressed: callback,
//           splashRadius: 25,
//           icon: Icon(
//             isVisiable ? Icons.visibility : Icons.visibility_off,
//             size: SizeConfig.imageSizeMultiplier * 6,
//             // color: AppColors.greyText,
//           ),
//         ),
//       ),
//       style: TextStyle(
//         color: AppColors.blackText,
//         fontSize: SizeConfig.textMultiplier * 1.8,
//         fontWeight: FontWeight.w400,
//       ),
//     );
//   }
// }
