import 'package:flutter/material.dart';
import 'package:when_i_work/constants/colors.dart';
import '../size_config.dart';

class MyAppBar {
  static simpleappbar(
    BuildContext context, {
    String title = "",
    IconData? leading,
    IconData? action,
    VoidCallback? onleadingtap,
    onactiontap,
  }) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.kprimary,
      leadingWidth: SizeConfig.widthMultiplier * 11.5,
      leading: IconButton(
        onPressed: onleadingtap,
        icon: Icon(
          leading,
          color: Colors.white,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontSize: SizeConfig.textMultiplier * 2.2),
      ),
      actions: [
        IconButton(
          onPressed: onactiontap,
          icon: Icon(
            action,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
