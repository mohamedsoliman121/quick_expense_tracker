
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quick_expense_tracker/app/modules/dashbord/dashbord_controller/dashbord_controller.dart';




class  DashbordView extends StatelessWidget{
   DashbordView({super.key});
final DashbordController controller = Get.find<DashbordController>() ;
  @override
  Widget build(BuildContext context) {
  return Obx( 
    
    () => 
     Scaffold(
 // لما يكون null بيكون أنظف من Size
    
     body: Obx(() => controller.screens[controller.currentscreen.value]()),
    bottomNavigationBar: BottomNavigationBar(
    currentIndex: controller.currentscreen.value,
    onTap: (index) => controller.changecurrentscreen(index),
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.white,
    elevation: 10,
    iconSize: 24,
    selectedItemColor: const Color(0xFF0B876A),
    unselectedItemColor: Colors.grey,
    selectedFontSize: 12,
    unselectedFontSize: 11,
    showSelectedLabels: true,
    showUnselectedLabels: true,
    selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
    unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home_outlined),
        activeIcon: Icon(Icons.home),
        label: 'Home',
      ),
          BottomNavigationBarItem(
        icon: Icon(Icons.add),
        activeIcon: Icon(Icons.add),
        label: 'add',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.bar_chart_outlined),
        activeIcon: Icon(Icons.bar_chart),
        label: 'Stats',
      ),
    
    ],
    ),
    
    
    ),
  ) ;
  }




}