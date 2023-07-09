import 'package:app_essentials_auth/app/data/repositories/auth_repository.dart';
import 'package:app_essentials_auth/app/modules/auth/sign_up/controllers/post_sign_up_controller.dart';
import 'package:get/get.dart';

import '../controllers/sign_up_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpController>(
      () => SignUpController(authRepository: AuthRepository()),
    );
  }
}

class PostSignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PostSignUpController>(
      () => PostSignUpController(),
    );
  }
}
