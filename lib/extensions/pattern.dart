class Patterns {
  static String url =
      r'^((?:.|\n)*?)((http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)([-A-Z0-9.]+)(/[-A-Z0-9+&@#/%=~_|!:,.;]*)?(\?[A-Z0-9+&@#/%=~_|!:‌​,.;]*)?)';

  static String phone = r'(^(?:[+0]9)?[0-9]{10,12}$)';

  static String email =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  static String image = r'.(jpeg|jpg|gif|png|bmp)$';

  /// Audio regex
  static String audio = r'.(mp3|wav|wma|amr|ogg)$';
}
