import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quick_expense_tracker/app/modules/stats/stats_controller/stats_controller.dart';


class StatsView extends StatelessWidget{
   StatsView({super.key});
final StatsController controller = Get.find<StatsController>() ;
  @override
  Widget build(BuildContext context) {
    return Scaffold() ;
  }
}