// # Thiết lập và phương thức lưu trữ dữ liệu bằng Hive
import 'package:hive_flutter/adapters.dart';


// save, get, delete
class HiveHelper{
  static const String savedRecipesBox = 'savedRecipes'; // Hộp lưu công thức yêu thích

  // Lấy Box hiện tại đang mở
  static Box getSavedRecipesBox() {
      return Hive.box(savedRecipesBox);
  }

  // Lưu một recipe
  static Future<void> saveRecipe(Map<String, dynamic> recipeData) async {
    final box = getSavedRecipesBox();
    await box.put(recipeData['idMeal'], recipeData);
  }

  // xóa một recipe
  static Future<void> removeRecipe(String id) async {
    final box = getSavedRecipesBox();
    await box.delete(id);
  }

}