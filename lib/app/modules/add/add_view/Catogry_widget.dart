





import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quick_expense_tracker/app/modules/add/add_controller/add_controller.dart';


// ignore: must_be_immutable
class CatogryWidget extends StatelessWidget{
 
   CatogryWidget({super.key });
AddController controller = Get.find<AddController>() ;
  @override
  Widget build(BuildContext context) {
return Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
Text("Category") ,
SizedBox(height: 16,) , 
Wrap(
  direction: Axis.horizontal,
  children: [
    GestureDetector(
      onTap: () => {
      controller.selectCategory(1)
      },
      child: Container(
        padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(horizontal: 5 , vertical: 5),
        width: 90,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10) , 
          border: controller.isSelected == 1 ? Border.all(width: 1 , color:   Colors.teal) : Border.all(width: 0)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.no_drinks , color:  controller.isSelected == 1 ? Colors.teal : Colors.black,) , 
            SizedBox(height: 3,) , 
            Text("Food & Drink")
          ],
        ),
      ),
    ) , 

 GestureDetector(
  onTap: () => {

       controller.selectCategory(2)
  },
   child: Container(
        padding: EdgeInsets.all(5),
                     margin: EdgeInsets.symmetric(horizontal: 5 , vertical: 5),   
                   
        width: 90,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10) , 
 border: controller.isSelected == 2 ? Border.all(width: 1 , color:   Colors.teal) : Border.all(width: 0)        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.car_crash ,color:  controller.isSelected == 2 ? Colors.teal : Colors.black,) , 
            SizedBox(height: 3,) , 
            Text("Transport")
          ],
        ),
      ),
 ) , 



     GestureDetector(
      onTap: () {
           controller.selectCategory(3) ;
      },
       child: Container(
        padding: EdgeInsets.all(5),
                   margin: EdgeInsets.symmetric(horizontal: 5 , vertical: 5),
        width: 90,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10) , 
 border: controller.isSelected == 3 ? Border.all(width: 1 , color:   Colors.teal) : Border.all(width: 0)        
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.shopping_bag , color:  controller.isSelected == 3 ? Colors.teal : Colors.black,) , 
            SizedBox(height: 3,) , 
            Text("Shopping")
          ],
        ),
           ),
     ) , 



     GestureDetector(
      onTap: () {
           controller.selectCategory(4);
      },
       child: Container(
        padding: EdgeInsets.all(5),
                 margin: EdgeInsets.symmetric(horizontal: 5 , vertical: 5),
        width: 90,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10) , 
        border: controller.isSelected == 4 ? Border.all(width: 1 , color:   Colors.teal) : Border.all(width: 0)        ),

        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.blinds_closed  , color:  controller.isSelected == 4 ? Colors.teal : Colors.black) , 
            SizedBox(height: 3,) , 
            Text("billes")
          ],
        ),
           ),
     ) , 


     GestureDetector(
      onTap: () {
           controller.selectCategory(5) ;
      },
       child: Container(
        padding: EdgeInsets.all(5),
                    margin: EdgeInsets.symmetric(horizontal: 5 , vertical: 5),
        width: 110,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10) , 
   border: controller.isSelected == 5 ? Border.all(width: 1 , color:   Colors.teal) : Border.all(width: 0)        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.heart_broken , color:  controller.isSelected == 5 ? Colors.teal : Colors.black) , 
            SizedBox(height: 3,) , 
            Text("Entertainment")
          ],
        ),
           ),
     ) , 









  ],
) , 
SizedBox(height: 16,) , 
  ],
) ;
  }
}