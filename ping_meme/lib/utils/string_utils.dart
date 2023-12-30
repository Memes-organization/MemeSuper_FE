class StringUtils {
  static String capitalize(String text) {
    // Viết hoa ký tự đầu tiên của chuỗi
    if (text.isEmpty) {
      return text;
    }
    return text[0].toUpperCase() + text.substring(1);
  }

  static String removeSpaces(String text) {
    // Xóa các khoảng trắng trong chuỗi
    return text.replaceAll(' ', '');
  }
}

class AppStringConstant {
    static String titleName = "MemeSuper" ;  
}