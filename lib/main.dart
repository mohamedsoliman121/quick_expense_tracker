import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quick_expense_tracker/app/routes/app_pages.dart';
import 'package:quick_expense_tracker/app/routes/app_routes.dart';


Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();

await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),

      defaultTransition : Transition.downToUp , 
    //  home:  Text(AppRoutes.home),
      initialRoute: AppRoutes.dashbord,
      getPages: AppPages.pages,
    );
  }
}






