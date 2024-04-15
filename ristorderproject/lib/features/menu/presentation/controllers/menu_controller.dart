import 'package:get/get.dart';
import 'package:ristorderproject/features/menu/data/models/category.dart';
import 'package:ristorderproject/features/menu/data/repositories_impl/menu_repository_impl.dart';

class MenuController extends GetxController {
  final RxList<Category> categories = RxList<Category>();
  final MenuRepo repository;

  MenuController({required this.repository});

  @override
  void loadCategories() async {
    final categoryList = await repository.getCategories();
    categories.assignAll(categoryList);
  }
}