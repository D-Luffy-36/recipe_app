import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:recipt_app/features/home/models/recipe_model.dart';


// Hàm chuyển đổi List<dynamic> JSON thành List<RecipeModel>
List<RecipeModel> parseMeals(List<dynamic> mealsJson) {
  return mealsJson.map((json) => RecipeModel.fromJson(json)).toList();
}

class ApiService{
  static const String baseUrl = "https://www.themealdb.com/api/json/v1/1";
  final logger = Logger();

  // Create a Dio instance with the base URL to send requests
  final Dio _dio = Dio(BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: 5000,
    receiveTimeout: 3000,
    responseType: ResponseType.json,
  ));

  // Add more endpoints as needed
  Future<List<RecipeModel>?> searchMeals(String query) async{
    try {
      //  - queryParameters sẽ đính kèm '?s=<query>' vào URL
      final response = await _dio.get('/search.php', queryParameters: {'s': query});
      final List<dynamic>  rawMeals = response.data['meals'] as List<dynamic> ?? [];
      logger.i(rawMeals);
      if(rawMeals.isEmpty) {
        logger.w('No meals found for query: $query');
        return [];
      }

      final List<Map<String, dynamic>> mealsJson = rawMeals.map((meal) => meal as Map<String, dynamic>).toList();

      // Chạy parse trên isolate khác tránh chạy trên luồng main render UI
      // callback phải là top-level function (ngoài class)
      // compute(callback, data) sẽ chạy callback trên isolate khác
      // dữ liệu truyền vào cho callback phải là kiểu đơn giản.
      final meals = await compute(parseMeals, mealsJson);

      return meals;

    }catch(e){
      logger.e('Error fetching meals: $e');
      throw Exception('Failed to fetch meals: $e');
    }
  }

  Future<List<dynamic>> getCategories() async{
    try {
      //  - queryParameters sẽ đính kèm '?s=<query>' vào URL
      final response = await _dio.get('/categories.php');
      return response.data['categories'] ?? [];
    }catch(e){
      logger.e('Error fetching categories: $e');
      throw Exception('Failed to fetch meals: $e');
    }
  }


}
