

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quick_expense_tracker/app/modules/home/controller/Home_controller.dart';

class HomeView extends StatelessWidget{
   HomeView({super.key});

final HomeController controller = Get.find<HomeController>() ;

  @override
  Widget build(BuildContext context) {
    
   return Scaffold(
appBar: AppBar(
  backgroundColor: Colors.teal , 
  leading: CircleAvatar(
    child: Icon(Icons.person),
  ),
  title: Text("Quick Expense" , style: TextStyle(color: Colors.white),),
  centerTitle: true,
  actions: [
    IconButton(onPressed: (){
    //  controller.dilogadd() ;
    }, icon:   Icon(Icons.calendar_month , color: Colors.white,))
    
  ],
),
body: SingleChildScrollView(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
       height: 200,
       decoration: BoxDecoration(
         color: Colors.teal , 
         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30) , bottomRight: Radius.circular(30))
         
       ),
   child: Stack(
    clipBehavior: Clip.none , 
    children: [
      Positioned(
        right: 10,
        top: 20,
        left: 150,
        child: Container(
         // padding: EdgeInsets.all(10),
           width: 50,
           height: 50,
           decoration: BoxDecoration(
             color: Colors.white , 
             borderRadius: BorderRadius.circular(15)
           ),
           child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Text("Today , Nov 14 ") , 
               Icon(Icons.calendar_month_outlined)
             ],
           ),
         ),
      ),
   Positioned(
    right: 10,
    left: 10,
    top: 120,
   bottom: -20,
     child: Container(
      height: 70,
    //  margin: EdgeInsets.only(bottom: -20),
              decoration: BoxDecoration(
               color: Colors.white , 
               borderRadius: BorderRadius.circular(15) ,
               boxShadow: [
                BoxShadow(
                  spreadRadius: 2 ,
                  color: Colors.white10
                )
               ] ,
               
             ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(" Daily Total:" , style:  TextStyle(fontSize: 20 , fontWeight: FontWeight.w500),) , 
              Text("\$85.45", style:  TextStyle(fontSize: 20 , fontWeight: FontWeight.w500),)
            ],
          ), 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 150,
                child: Divider(
                  color: Colors.tealAccent,
                  thickness: 5,
                ),
              )
            ],
          )
        ],



      ),
     ),
   )
    ],
   ),
      ),
SizedBox(height: 50,) , 

Align(
  alignment: Alignment.topLeft,
  child: Text("Todays")) , 


Column(
  children: [
    ListView.builder(
      shrinkWrap: true,
      itemCount: controller.gen.length,
      itemBuilder: ( context,  index) { 
    
     return Container(
      margin: EdgeInsets.symmetric(horizontal: 20 , vertical: 5),
      width: 200, 
      height:100 , 
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20) , 
   color:  Colors.white , 
   boxShadow: [
    BoxShadow(
      spreadRadius: 2 , 
      color: Colors.white12 , 
    )
   ] , 
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         

     Row(
       children: [
         Container(
      padding: EdgeInsets.all(5),     
          decoration: BoxDecoration(
               color: Colors.brown,
               shape: BoxShape.circle
          ),
       
          child: Icon(Icons.coffee , size: 40,  color: Colors.white,)) , 
         SizedBox(width: 15,) ,
         Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 4,) , 
            Text(controller.gen[index], style: TextStyle(fontSize: 20),) , 
              Text("morning brew", style: TextStyle(fontSize: 15),) , 
                Text("food & drink", style: TextStyle(fontSize: 10),) , 
                   SizedBox(height: 4,) , 
          ],
         ),
       ],
     ) , 
     Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
          Text("\$-4.8" , style:  TextStyle(color: Colors.red),) , 
            Text("\$4.0 time") , 
      ],
     )


        ],
      ),
     ); 
    
    
     },
    
    ),
  ],
)


    ],
  ),


//

)

   );
  }





}