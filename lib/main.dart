import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hive_flutter/hive_flutter.dart';


import 'core/routers/app_pages.dart';
import 'core/routers/app_router.dart';
import 'core/services/api_service.dart' show ApiService;




void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize any necessary services or plugins here
    await Hive.initFlutter();
    await Hive.openBox('savedRecipes'); // Hộp lưu công thức yêu thích

  // final api = ApiService();
  // print('⏳ Bắt đầu test API…\n');
  // const keyword = 'chicken';
  // final meals = await api.searchMeals(keyword);
  // print('🔍 Tìm kiếm món ăn với từ khóa "$keyword":');
  // // for (var meal in meals) {
  // //   meal.toString();
  // // }







  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return GetMaterialApp(
        title: 'Recipt App',
        initialRoute: AppRoutes.splash,
        getPages: AppPages.routes,
      );
    }
  }