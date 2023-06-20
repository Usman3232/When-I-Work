import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:when_i_work/Constants/colors.dart';
import 'package:when_i_work/constants/textstyles.dart';
import 'package:when_i_work/controllers/dashboard_controller.dart';
import 'package:when_i_work/views/widgets/appbars.dart';
import 'package:when_i_work/views/widgets/refresh.dart';
import 'package:when_i_work/utils/size_config.dart';
import '../../../widgets/divider_widget.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});
  final dashboardController = Get.put(DashboardController());

  RefreshController refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    //here you have to call the function which you want to refresh and changed the below duration accordingly
    await Future.delayed(const Duration(milliseconds: 1000));
    refreshController.refreshCompleted();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        appBar: AppBar(),
        title: "When I Work",
      ),
      body: SmartRefresher(
        enablePullDown: true,
        header: CustomHeader(
          builder: (context, mode) {
            return const RefreshWidget();
          },
        ),
        controller: refreshController,
        onRefresh: _onRefresh,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TrialDaysWidget(dashboardController: dashboardController),
              const AppDivider(),
              GetStartedWidget(),
              const TitleHeadWidget(title: "Today"),
              PrimaryTileWidget(
                title: "Employee Activity",
                isicon: true,
                icon: FeatherIcons.users,
                onPressed: () {},
              ),
              const AppDivider(),
              PrimaryTileWidget(
                title: "Attendance Notices",
                value: "0",
                onPressed: () {},
              ),
              const TitleHeadWidget(title: "Requests"),
              PrimaryTileWidget(
                title: "Open Shift Request",
                value: "0",
                onPressed: () {},
              ),
              const AppDivider(),
              PrimaryTileWidget(
                title: "Shift Requests",
                value: "0",
                onPressed: () {},
              ),
              const AppDivider(),
              PrimaryTileWidget(
                title: "Time Of Requests",
                value: "0",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PrimaryTileWidget extends StatelessWidget {
  const PrimaryTileWidget({
    super.key,
    this.isicon = false,
    this.icon,
    this.title = "",
    this.value = "",
    this.onPressed,
  });
  final String title;
  final String value;
  final bool isicon;
  final IconData? icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.heightMultiplier * 1.5),
        InkWell(
          onTap: onPressed,
          child: Row(
            children: [
              Container(
                height: SizeConfig.heightMultiplier * 5,
                width: SizeConfig.widthMultiplier * 10,
                margin: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.kgreyColor),
                ),
                child: Center(
                  child: isicon
                      ? Icon(
                          icon,
                          size: SizeConfig.imageSizeMultiplier * 5,
                        )
                      : Text(
                          value,
                          style: AppTextStyles.bodySmall(),
                        ),
                ),
              ),
              Text(
                title,
                style: AppTextStyles.bodyMedium(),
              )
            ],
          ),
        ),
        SizedBox(height: SizeConfig.heightMultiplier * 1.5)
      ],
    );
  }
}

class TitleHeadWidget extends StatelessWidget {
  const TitleHeadWidget({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 5,
      width: SizeConfig.widthMultiplier * 100,
      padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 4),
      color: AppColors.kgreyColor.withOpacity(.1),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: AppTextStyles.bodyMedium(),
        ),
      ),
    );
  }
}

class GetStartedWidget extends StatelessWidget {
  GetStartedWidget({
    super.key,
  });

  List<IconData> icons = [
    FeatherIcons.plus,
    FeatherIcons.zap,
    FeatherIcons.user
  ];
  List<String> title = ["Schedule A Shift", "Add Positions", "Add Employee"];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: SizeConfig.heightMultiplier * 2),
          Text(
            "Let's Get Started",
            style: AppTextStyles.headingSmall(),
          ),
          SizedBox(height: SizeConfig.heightMultiplier * 1),
          Text(
            "Set up your account by completing these tasks.",
            style: AppTextStyles.bodyMedium()
                .copyWith(color: AppColors.kgreyColor),
          ),
          SizedBox(height: SizeConfig.heightMultiplier * 2),
          ...List.generate(
            icons.length,
            (index) => Padding(
              padding: EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 2),
              child: GestureDetector(
                onTap: () {
                  print(index);
                },
                child: Row(
                  children: [
                    Icon(
                      icons[index],
                      size: SizeConfig.imageSizeMultiplier * 5.5,
                    ),
                    SizedBox(width: SizeConfig.widthMultiplier * 4),
                    Text(
                      title[index],
                      style: AppTextStyles.bodyMedium(),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TrialDaysWidget extends StatelessWidget {
  const TrialDaysWidget({
    super.key,
    required this.dashboardController,
  });

  final DashboardController dashboardController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 4),
      child: Column(
        children: [
          SizedBox(height: SizeConfig.heightMultiplier * 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Days left on trial",
                style: AppTextStyles.bodyMedium(),
              ),
              CircularPercentIndicator(
                radius: SizeConfig.imageSizeMultiplier * 6,
                animation: true,
                percent: dashboardController.percent.value,
                center: Text(
                  dashboardController.trialDays.value.toString(),
                  style: AppTextStyles.bodySmall()
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                circularStrokeCap: CircularStrokeCap.round,
                backgroundColor: AppColors.kgreyColor,
                progressColor: AppColors.primaryClr,
              ),
            ],
          ),
          SizedBox(height: SizeConfig.heightMultiplier * 2),
        ],
      ),
    );
  }
}
