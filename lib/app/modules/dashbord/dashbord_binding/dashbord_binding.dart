
import 'package:get/get.dart';
import 'package:quick_expense_tracker/app/modules/dashbord/dashbord_controller/dashbord_controller.dart';
import 'package:quick_expense_tracker/app/modules/home/controller/Home_controller.dart';

class DashbordBinding extends Bindings{
  @override
  void dependencies() {
 Get.put(DashbordController());
Get.lazyPut<HomeController>(() => HomeController(), fenix: true);

  }
}