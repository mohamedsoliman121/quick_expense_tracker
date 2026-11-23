import 'package:get/get.dart';
import 'package:quick_expense_tracker/app/modules/add/add_binding/add_binding.dart';
import 'package:quick_expense_tracker/app/modules/add/add_view/add_view.dart';
import 'package:quick_expense_tracker/app/modules/dashbord/dashbord_binding/dashbord_binding.dart';
import 'package:quick_expense_tracker/app/modules/dashbord/dashbord_view/dashbord_view.dart';
import 'package:quick_expense_tracker/app/modules/home/binding/Home_binding.dart';
import 'package:quick_expense_tracker/app/modules/home/view/Home_view.dart';
import 'package:quick_expense_tracker/app/modules/stats/stats_binding/stats_binding.dart';
import 'package:quick_expense_tracker/app/modules/stats/stats_view/stats_view.dart';
import 'package:quick_expense_tracker/app/routes/app_routes.dart';

class AppPages {
  AppPages._();

  static final pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.dashbord,
      page: () => DashbordView(),
      binding: DashbordBinding(),
    ),
    GetPage(name: AppRoutes.add,
     page: () => AddView(), 
     binding: AddBinding()),
     GetPage(name: AppRoutes.stats, page:() => StatsView() , 
     binding: StatsBinding() )
  ];
}
