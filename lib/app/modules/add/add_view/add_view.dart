

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quick_expense_tracker/app/modules/add/add_controller/add_controller.dart';
import 'package:quick_expense_tracker/app/modules/add/add_view/Catogry_widget.dart';


class AddView extends StatelessWidget {
  AddView({super.key});

  final AddController controller = Get.put(AddController());


  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final isOpen = controller.isDialogOpen.value;

      return Stack(
        children: [
          // خلفية صفحة الإضافة (تظهر لو الدايلوج اتقفل)
          Center(
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF0B876A),
                foregroundColor: Colors.white,
              ),
              onPressed: controller.openDialog,
              icon: const Icon(Icons.add),
              label: const Text('Open Add Expense'),
            ),
          ),

          // الدايلوج الذي يفتح تلقائياً عند دخول الصفحة
          if (isOpen)
            Positioned.fill(
              child: GestureDetector(
                onTap: controller.closeDialog,
                child: Container(
                  color: Colors.black.withOpacity(0.35),
                  alignment: Alignment.topCenter,
                  child: GestureDetector(
                    onTap: () {}, // يمنع إغلاق الدايلوج عند الضغط داخله
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.18),
                            blurRadius: 16,
                            offset: const Offset(0, 6),
                          ),
                        ],
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Add Expense',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                IconButton(
                                  onPressed: controller.closeDialog,
                                  icon: const Icon(Icons.close),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            TextField(
                              controller: controller.amountCtrl,
                              keyboardType:
                                  const TextInputType.numberWithOptions(decimal: true),
                              decoration: const InputDecoration(
                                labelText: 'Amount',
                                prefixText: '\$ ',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(height: 12),
                            TextField(
                              controller: controller.descCtrl,
                              decoration: const InputDecoration(
                                labelText: 'Description',
                                hintText: 'Enter description...',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(height: 16),
                            TextField(
                              controller: controller.datecon,
                              decoration: const InputDecoration(
                                labelText: 'Date',
                                hintText: 'Today , 14 Nov',
                                suffixIcon: Icon(Icons.calendar_month),
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(height: 16),



                       
                         
                           GetBuilder<AddController>(
                             builder: (context) {
                               return CatogryWidget();
                             }
                           ) , 

                         
                        
                         
                            
                            
                        
DropdownButtonFormField<String>(
  
  value: controller.selectedAccount.value,
  isExpanded: true,
  icon: const Icon(Icons.keyboard_arrow_down),
  decoration: InputDecoration(
    labelText: 'Account',
    filled: true,
    fillColor: Colors.white,
    contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xFF0B876A), width: 1.5),
    ),
  ),
  items: controller.accounts
      .map(
        (item) => DropdownMenuItem<String>(
          value: item,
          child: Text(item),
        ),
      )
      .toList(),
  onChanged: (value) {
    if (value != null) {
      controller.selectedAccount.value = value;
    }
  },
) ,

                            const SizedBox(height: 16),
                            SizedBox(
                              width: double.infinity,
                              height: 46,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF0B876A),
                                  foregroundColor: Colors.white,
                                ),
                                onPressed: () {
                                  // هنا حفظ المصروف عبر GetStorage
                                  controller.savedata();
                                  controller.closeDialog();
                                },
                                child: const Text('SAVE TRANSACTION'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      );
    });
  }
}