// import 'package:flutter/material.dart';
// import 'package:taxi_app/Constants/colors.dart';
// import 'package:taxi_app/Utils/size_config.dart';

// class CustomSearchTextField extends StatefulWidget {
//   const CustomSearchTextField({
//     super.key,
//     required this.controller,
//     this.autofocus = false,
//     this.hinttext,
//     this.isprefix = false,
//     this.issuffix = false,
//   });
//   final TextEditingController controller;

//   final bool autofocus, isprefix, issuffix;
//   final String? hinttext;

//   @override
//   State<CustomSearchTextField> createState() => _CustomSearchTextFieldState();
// }

// class _CustomSearchTextFieldState extends State<CustomSearchTextField> {
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
//       // onChanged: (value) {
//       //   if (value.length == 1) {
//       //     FocusScope.of(context).nextFocus();
//       //   }
//       // },

//       autofocus: widget.autofocus,
//       cursorColor: Colors.black,
//       keyboardType: TextInputType.text,
//       controller: widget.controller,
//       decoration: InputDecoration(
//         hintText: widget.hinttext,
//         prefixIcon: widget.isprefix
//             ? widget.hinttext == "Search Location"
//                 ? Icon(
//                     Icons.search_rounded,
//                     color: check ? AppColors.primary : const Color(0xff9E9E9E),
//                   )
//                 : null
//             : null,
//         suffixIcon: widget.issuffix
//             ? widget.hinttext == "Search Location"
//                 ? Icon(
//                     Icons.format_align_center,
//                     color: check ? AppColors.primary : const Color(0xff9E9E9E),
//                   )
//                 : widget.hinttext == "Destination"
//                     ? Icon(
//                         Icons.location_on_rounded,
//                         color:
//                             check ? AppColors.primary : const Color(0xff9E9E9E),
//                       )
//                     : widget.hinttext == "From"
//                         ? Icon(
//                             Icons.my_location_rounded,
//                             color: check
//                                 ? AppColors.primary
//                                 : const Color(0xff9E9E9E),
//                           )
//                         : null
//             : null,

//         // suffixIcon: Icon(
//         //   widget.suffixicon,
//         //   color: check ? AppColors.primary : const Color(0xff9E9E9E),
//         // ),
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
//       style: TextStyle(
//         color: Theme.of(context).textTheme.bodyLarge!.color,
//         fontSize: SizeConfig.textMultiplier * 1.8,
//         fontWeight: FontWeight.w400,
//       ),
//     );
//   }
// }
