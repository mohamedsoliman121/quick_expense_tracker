
import 'package:get/get.dart';
import 'package:quick_expense_tracker/app/modules/add/add_controller/add_controller.dart';
import 'package:quick_expense_tracker/app/modules/dashbord/dashbord_controller/dashbord_controller.dart';
import 'package:quick_expense_tracker/app/modules/home/controller/Home_controller.dart';
import 'package:quick_expense_tracker/app/modules/stats/stats_controller/stats_controller.dart';

class DashbordBinding extends Bindings{
  @override
  void dependencies() {
 Get.put(DashbordController());
Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
Get.lazyPut<AddController>(() => AddController() , fenix: true ) ;
Get.lazyPut<StatsController>(() => StatsController() , fenix: true) ;

  }
}