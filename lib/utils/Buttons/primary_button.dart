import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  String title;
  final double? height;
  final double? width;
  final Color? color, textcolor;
  final Color borderColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double radius;
  VoidCallback callback;

  PrimaryButton({
    Key? key,
    this.title = "button name",
    required this.callback,
    this.color,
    this.textcolor = Colors.black,
    this.height,
    this.width,
    this.fontSize = 16,
    this.radius = 0,
    this.fontWeight = FontWeight.w500,
    this.borderColor = Colors.transparent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: height,
      minWidth: width,
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: borderColor),
        borderRadius: BorderRadius.circular(radius),
      ),
      color: color,
      onPressed: () {
        callback();
      },
      child: Text(
        title,
        style: TextStyle(
            fontSize: fontSize, color: textcolor, fontWeight: fontWeight),
      ),
    );
  }
}
