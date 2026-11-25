

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quick_expense_tracker/app/modules/stats/stats_controller/stats_controller.dart';



class CustomCard extends StatelessWidget {

   CustomCard({super.key});
final StatsController controller = Get.find<StatsController>() ;

  @override
  Widget build(BuildContext context) {

  return ListView.builder(
       shrinkWrap: true,
    itemCount: controller.data.length,
    itemBuilder: (context , index) {

    return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8) , 
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black12 , 
          spreadRadius: .5 , 
          blurRadius: .5
        )
      ]
    ),
    margin: EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row( 
    
          children: [
            Icon(Icons.icecream , color: Colors.teal,size: 20, ) , 
            Text(controller.data[index]["catogray"])
          ],
         ) , 
        Column(
          children: [
            Text(controller.data[index]["account"]) , 
            Text(controller.data[index]["amont"])
          ],
        )
      ],
    ),
  );
  }

  
  );
  }




}