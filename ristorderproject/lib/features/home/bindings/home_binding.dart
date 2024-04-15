import 'package:get/get.dart';
import 'package:ristorderproject/features/login/presentation/controllers/auth_service.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
  }
}