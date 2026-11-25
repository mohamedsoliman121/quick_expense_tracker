import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quick_expense_tracker/app/models/Add_model.dart';

class AddController extends GetxController {
  final GetStorage _box = GetStorage();
  static const String _storageKey = 'expenses_list';

  // قائمة المصروفات التفاعلية
  final RxList<AddModel> expenses = <AddModel>[].obs;

  final TextEditingController amountCtrl = TextEditingController();
  final TextEditingController descCtrl = TextEditingController();
  final TextEditingController datecon = TextEditingController();

  final RxString selectedAccount = 'Cash'.obs;
  final List<String> accounts = ['Cash', 'Card', 'Wallet'];

  final RxBool isDialogOpen = false.obs;
  int isSelected = 1;

  static const Map<int, String> _categoryMap = {
    1: 'Food & Drink',
    2: 'Transport',
    3: 'Shopping',
    4: 'Bills',
    5: 'Entertainment',
  };

  String get selectedCategoryName => _categoryMap[isSelected] ?? 'Others';

  void selectCategory(int index) {
    isSelected = index;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    loadExpenses();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      isDialogOpen.value = true;
    });
  }

  void openDialog() {
    isDialogOpen.value = true;
  }

  void closeDialog() {
    isDialogOpen.value = false;
  }

  void changeAccount(String? value) {
    if (value != null) {
      selectedAccount.value = value;
    }
  }

  void loadExpenses() {
    final List<dynamic>? rawList = _box.read<List<dynamic>>(_storageKey);
    if (rawList != null) {
      expenses.assignAll(
        rawList
            .map((item) => AddModel.fromMap(Map<String, dynamic>.from(item as Map)))
            .toList(),
      );
    }
  }

  void savedata() {
    final int parsedAmount = int.tryParse(amountCtrl.text.trim()) ?? 0;
    if (parsedAmount <= 0) return;

    final DateTime parsedDate =
        DateTime.tryParse(datecon.text.trim()) ?? DateTime.now();

    final newItem = AddModel(
      amont: parsedAmount.toString(),
      des: descCtrl.text.trim().isEmpty ? 'Expense' : descCtrl.text.trim(),
      date: parsedDate.toString(),
      catogray: selectedCategoryName,
      account: selectedAccount.value,
    );

    expenses.add(newItem);
final List<Map<String, dynamic>> encodedList =
    expenses.map((e) => e.toMap()).toList();


_box.write(_storageKey, encodedList);
    // تفريغ الحقول بعد الحفظ
    amountCtrl.clear();
    descCtrl.clear();
    datecon.clear();
  }

  @override
  void onClose() {
    amountCtrl.dispose();
    descCtrl.dispose();
    datecon.dispose();
    super.onClose();
  }
}