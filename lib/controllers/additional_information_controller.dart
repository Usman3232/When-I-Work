import 'package:get/get.dart';

class AdditionalInformationController extends GetxController {
  RxString selectedNumberofEmployees = "".obs;
  RxString selectedHearAboutUs = "".obs;

  final numberOfEmployees = [
    "1-20",
    "21-50",
    "51-200",
    "201-500",
    "501-3000",
    "3001+"
  ];
  final hearAboutUs = [
    "I used it at a prevoius workplace",
    "I was referred by one of my employees",
    "I was referred by another When I Work Customer",
    "Internet search",
    "Other",
  ];
}
