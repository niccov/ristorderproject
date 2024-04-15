import 'package:get/get.dart';
import 'package:ristorderproject/features/menu/presentation/controllers/menu_controller.dart';
import 'package:ristorderproject/features/menu/data/repositories_impl/menu_repository_impl.dart';
import 'package:ristorderproject/features/menu/data/datasources/menu_data_source.dart';

class MenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MenuDataSource>(() => MenuDataSource());
    Get.lazyPut<MenuRepo>(() => MenuRepoImpl(Get.find()));
    Get.lazyPut<MenuController>(() => MenuController(repository: Get.find()));
  }
}