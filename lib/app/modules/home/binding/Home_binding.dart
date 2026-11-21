

import 'package:get/get.dart';
import 'package:quick_expense_tracker/app/modules/home/controller/Home_controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
Get.put(HomeController()) ;
  }
}