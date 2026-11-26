
import 'package:get_storage/get_storage.dart';

import 'package:get/get.dart';

class StatsController extends GetxController{
final GetStorage box = GetStorage();
final GetStorage one = GetStorage() ;

  final RxList<Map<String, dynamic>> data =
      <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadExpenses();
  }

  void loadExpenses() {
    final List<dynamic> savedData =
        box.read('expenses_list') ?? [];

    data.assignAll(
      savedData.map(
        (item) => Map<String, dynamic>.from(item),
      ),
    );
  }

  
}