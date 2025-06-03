import 'package:get/get.dart';
import '';
import '../../../core/services/api_service.dart' show ApiService;



class HomeController {
  // This class can be used to manage the state and logic of the home screen.
  // For example, you can add methods to fetch data, handle user interactions, etc.

  var isLoading = true.obs;
  var recipeList = <Map<String, dynamic>>[].obs;
  var categories = <Map<String, dynamic>>[].obs;


  Future<List<dynamic>> fetchMeals(String query) async {
    // Logic to fetch meals from the API or local storage
    isLoading(true);
    // call api can be error, so we use try catch
    try {
      // Simulate a network call or data fetching
      final recipes = await ApiService().searchMeals(query);
      recipeList.assign(recipes as Map<String, dynamic>);

    } catch (e) {
      // Handle any errors that occur during the data fetching
      print('Error fetching meals: $e');
      // You can also show an error message to the user if needed
    } finally {
      isLoading(false);
    }

    // This is just a placeholder; you would replace it with actual API calls.
    return [];
  }

}