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


class Constant {

  static const  double paddingVertical = 8 ; 
  static const  double  paddingHorizontal = 24 ; 
  static const  double  radiusCircle = 24 ; 
  static const  double  radius = 12 ; 

  static const int margin = 16 ; 
}

class AppStringConstant {
    static  const String titleName = "MemeSuper" ;  
    static  const String editImage = "Edit photo" ;  
}