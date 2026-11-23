

import 'package:get/get.dart';
import 'package:quick_expense_tracker/app/modules/add/add_view/add_view.dart';
import 'package:quick_expense_tracker/app/modules/home/view/Home_view.dart';
import 'package:quick_expense_tracker/app/modules/stats/stats_view/stats_view.dart';

class DashbordController extends GetxController{
 final RxInt currentscreen = 0.obs ; 
//  final RxBool isadd = false.obs ;

 final List screens = [
 () => HomeView() , 
 () => AddView() , 
   () => StatsView() , 
  ] ; 
  

  void changecurrentscreen (int page) {
  //   if(page == 1) {
  //  isadd.value =! isadd.value ; 
  //  return;
  //   }

    // isadd.value = false ;
   currentscreen.value = page  ; 
   

  }
}



