import 'package:ristorderproject/features/menu/data/datasources/menu_data_source.dart';
import 'package:ristorderproject/features/menu/data/repositories_impl/menu_repository_impl.dart';
import 'package:ristorderproject/features/menu/data/models/category.dart';

abstract class MenuRepo {
  Future<List<Category>> getCategories();
}

class MenuRepoImpl implements MenuRepo {
  final MenuDataSource dataSource;

  MenuRepoImpl(this.dataSource);

  @override
  Future<List<Category>> getCategories() => dataSource.getCategories();
}