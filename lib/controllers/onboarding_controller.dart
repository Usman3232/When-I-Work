import 'package:get/get.dart';

class OnboardingController extends GetxController {
  RxInt selectedIndex = 0.obs;
  List onBoardingList = [
    {
      "title": "Faster Scheduling",
      "description":
          "Build the work schedule in minutes. Share and track it instantly.",
      "image": "assets/images/scheduling.json",
    },
    {
      "title": "Easier time tracking",
      "description":
          "Integrate Your schedule with the time clock and rduce labor costs",
      "image": "assets/images/tracking.json",
    },
    {
      "title": "Better communicaton",
      "description":
          "Connect with everyone across any shift or department, all in one place.",
      "image": "assets/images/communication.json",
    },
  ];
}
