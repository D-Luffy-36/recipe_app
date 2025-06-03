import 'package:json_annotation/json_annotation.dart';

// Gắn phần code được generate tự động từ json_serializable
part 'recipe_model.g.dart';

// Annotation giúp thư viện json_serializable hiểu để tạo code convert JSON <-> Dart
@JsonSerializable()
class RecipeModel {
  // ID của món ăn
  final String idMeal;

  // Tên món ăn
  final String strMeal;

  // Tên món ăn thay thế (có thể null)
  final String? strMealAlternate;

  // Danh mục (ví dụ: Chicken, Dessert,...)
  final String? strCategory;

  // Khu vực xuất xứ món ăn (ví dụ: Japanese, Italian,...)
  final String? strArea;

  // Hướng dẫn nấu ăn chi tiết
  final String? strInstructions;

  // Link hình ảnh minh họa món ăn
  final String? strMealThumb;

  // Các tag liên quan đến món ăn, phân cách bằng dấu phẩy
  final String? strTags;

  // Link video YouTube hướng dẫn nấu món ăn
  final String? strYoutube;

  // 20 nguyên liệu (có thể null nếu không sử dụng đến)
  final String? strIngredient1;
  final String? strIngredient2;
  final String? strIngredient3;
  final String? strIngredient4;
  final String? strIngredient5;
  final String? strIngredient6;
  final String? strIngredient7;
  final String? strIngredient8;
  final String? strIngredient9;
  final String? strIngredient10;
  final String? strIngredient11;
  final String? strIngredient12;
  final String? strIngredient13;
  final String? strIngredient14;
  final String? strIngredient15;
  final String? strIngredient16;
  final String? strIngredient17;
  final String? strIngredient18;
  final String? strIngredient19;
  final String? strIngredient20;

  // 20 định lượng tương ứng cho các nguyên liệu trên
  final String? strMeasure1;
  final String? strMeasure2;
  final String? strMeasure3;
  final String? strMeasure4;
  final String? strMeasure5;
  final String? strMeasure6;
  final String? strMeasure7;
  final String? strMeasure8;
  final String? strMeasure9;
  final String? strMeasure10;
  final String? strMeasure11;
  final String? strMeasure12;
  final String? strMeasure13;
  final String? strMeasure14;
  final String? strMeasure15;
  final String? strMeasure16;
  final String? strMeasure17;
  final String? strMeasure18;
  final String? strMeasure19;
  final String? strMeasure20;

  // Nguồn tham khảo (có thể là link tới công thức gốc)
  final String? strSource;

  // Nguồn của hình ảnh (nếu có)
  final String? strImageSource;

  // Có được xác nhận là Creative Commons không (bản quyền mở)
  final String? strCreativeCommonsConfirmed;

  // Ngày chỉnh sửa gần nhất (nếu có)
  final String? dateModified;

  // Constructor khởi tạo tất cả các trường
  RecipeModel({
    required this.idMeal,
    required this.strMeal,
    this.strMealAlternate,
    this.strCategory,
    this.strArea,
    this.strInstructions,
    this.strMealThumb,
    this.strTags,
    this.strYoutube,
    this.strIngredient1,
    this.strIngredient2,
    this.strIngredient3,
    this.strIngredient4,
    this.strIngredient5,
    this.strIngredient6,
    this.strIngredient7,
    this.strIngredient8,
    this.strIngredient9,
    this.strIngredient10,
    this.strIngredient11,
    this.strIngredient12,
    this.strIngredient13,
    this.strIngredient14,
    this.strIngredient15,
    this.strIngredient16,
    this.strIngredient17,
    this.strIngredient18,
    this.strIngredient19,
    this.strIngredient20,
    this.strMeasure1,
    this.strMeasure2,
    this.strMeasure3,
    this.strMeasure4,
    this.strMeasure5,
    this.strMeasure6,
    this.strMeasure7,
    this.strMeasure8,
    this.strMeasure9,
    this.strMeasure10,
    this.strMeasure11,
    this.strMeasure12,
    this.strMeasure13,
    this.strMeasure14,
    this.strMeasure15,
    this.strMeasure16,
    this.strMeasure17,
    this.strMeasure18,
    this.strMeasure19,
    this.strMeasure20,
    this.strSource,
    this.strImageSource,
    this.strCreativeCommonsConfirmed,
    this.dateModified,
  });

  // Hàm tạo object Meal từ JSON
  factory RecipeModel.fromJson(Map<String, dynamic> json) => _$RecipeModelFromJson(json);

  // Chuyển object Meal thành JSON
  Map<String, dynamic> toJson() => _$RecipeModelToJson(this);

  @override

  String toString() {
    return '''
          🍽️ Món ăn: $strMeal (ID: $idMeal)
          📂 Danh mục: ${strCategory ?? 'Không rõ'}
          🌍 Khu vực: ${strArea ?? 'Không rõ'}
          🎞️ Video: ${strYoutube ?? 'Không có'}
          🖼️ Hình ảnh: ${strMealThumb ?? 'Không có'}
          🏷️ Tags: ${strTags ?? 'Không có'}
          📖 Hướng dẫn: 
          ${strInstructions != null ? strInstructions!.trim() : 'Không có hướng dẫn.'}
          ''';
  }

}
