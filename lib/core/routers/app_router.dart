


//Tập trung quản lý tên đường dẫn (route names) ở một chỗ,
// tránh việc “hardcode” string đại trà khắp project.
// Giúp tránh sai sót về gõ thiếu/đúng dấu, tăng tính maintainable và dễ refactor

abstract class AppRoutes {
  static const String splash = '/';
  static const String home = '/home';
  static const String login = '/login';
  static const String register = '/register';
  static const String profile = '/profile';
  static const String settings = '/settings';
  static const String about = '/about';
  static const String contact = '/contact';
  static const String help = '/help';
  static const String terms = '/terms';
  static const String privacy = '/privacy';
}