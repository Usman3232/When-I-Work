import 'package:flutter/material.dart';
import 'package:when_i_work/constants/colors.dart';
import '../../constants/textstyles.dart';
import '../../utils/size_config.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData? leading;
  final IconData? action;
  final VoidCallback? onleadingtap, onactiontap;
  final AppBar? appBar;
  BaseAppBar({
    super.key,
    this.leading,
    this.action,
    this.onleadingtap,
    this.onactiontap,
    this.appBar,
    this.title = "",
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      backgroundColor: AppColors.primaryClr,
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
        style:
            AppTextStyles.headingSmall().copyWith(color: AppColors.kwhiteColor),
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

  @override
  Size get preferredSize => Size.fromHeight(appBar!.preferredSize.height);
}
