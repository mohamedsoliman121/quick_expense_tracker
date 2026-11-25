import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quick_expense_tracker/app/modules/stats/stats_controller/stats_controller.dart';
import 'package:quick_expense_tracker/app/modules/stats/stats_view/Card_Widget.dart';
import 'package:quick_expense_tracker/app/modules/stats/stats_view/CustomPaint_widger.dart';

class StatsView extends StatelessWidget {
  StatsView({super.key});

  final StatsController controller = Get.find<StatsController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: const Text(
          'October Overview',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 12),
            padding: const EdgeInsets.all(6),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.calendar_month,
              color: Colors.black,
              size: 20,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.only(bottom: 20),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
          ),
          child: Column(
            children: [
              const SizedBox(height: 16),
              const Column(
                children: [
                  Text(
                    'Monthly',
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  ),
                  SizedBox(height: 2),
                  Text(
                    '\$1,250.00',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                height: 260,
                child: Center(
                  child: SizedBox(
                    width: 210,
                    height: 210,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox.expand(
                          child: CustomPaint(
                            painter: DonutChartPainter(
                              slices: const [
                                CategorySlice(label: 'Food', value: 437.50, color: Color(0xFF0B876A)),
                                CategorySlice(label: 'Transport', value: 312.50, color: Color(0xFF16A085)),
                                CategorySlice(label: 'Shopping', value: 250.00, color: Color(0xFF48C9B0)),
                                CategorySlice(label: 'Bills', value: 150.00, color: Color(0xFF76D7C4)),
                                CategorySlice(label: 'Others', value: 100.00, color: Color(0xFFA3E4D7)),
                              ],
                            ),
                          ),
                        ),
                        const Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Monthly',
                              style: TextStyle(fontSize: 13, color: Colors.grey),
                            ),
                            SizedBox(height: 2),
                            Text(
                              '\$1,250.00',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return  CustomCard();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}