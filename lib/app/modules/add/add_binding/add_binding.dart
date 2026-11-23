
import 'package:get/get.dart';
import 'package:quick_expense_tracker/app/modules/add/add_controller/add_controller.dart';

class AddBinding extends Bindings{
  @override
  void dependencies() {
   Get.put(AddController()) ;
  }



}