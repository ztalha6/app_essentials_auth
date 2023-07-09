import 'package:app_essentials/config/app_configuration.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  Configuration configs = Configuration();

  RxBool visible = false.obs;
}
