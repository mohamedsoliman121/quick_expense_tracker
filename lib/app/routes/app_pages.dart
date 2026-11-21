import 'package:get/get.dart';
import 'package:quick_expense_tracker/app/modules/home/binding/Home_binding.dart';
import 'package:quick_expense_tracker/app/modules/home/view/Home_view.dart';
import 'package:quick_expense_tracker/app/routes/app_routes.dart';

class AppPages {
  AppPages._();

  static final pages = [
    GetPage(
      name: AppRoutes.home,
      page: () =>  HomeView(),
      binding:  HomeBinding(),
    ),
  ];
}
