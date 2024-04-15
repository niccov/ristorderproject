import 'package:get/get.dart';
import 'package:ristorderproject/features/home/bindings/home_binding.dart';
import 'package:ristorderproject/features/home/presentation/pages/home_page.dart';
import 'package:ristorderproject/features/menu/bindings/menu_binding.dart';
import 'package:ristorderproject/features/menu/presentation/pages/menu_page.dart';
import 'package:ristorderproject/routes/routes.dart';

import 'package:ristorderproject/features/login/bindings/auth_binding.dart';
import 'package:ristorderproject/features/login/presentation/pages/auth_page.dart';

class RoutePages{
  static final routes = [
    GetPage(
        name: Routes.AUTH,
        page: () => const AuthPage(),
        binding: AuthBinding()
    ),

    GetPage(
        name: Routes.HOME,
        page: () => const HomePage(),
        binding: HomeBinding()
    ),

    GetPage(
        name: Routes.MENU,
        page: () => const MenuPage(),
        binding: MenuBinding()
    )
  ];
}
