
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  final GetStorage box = GetStorage();

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

