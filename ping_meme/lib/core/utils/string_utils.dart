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
  static const double paddingVertical = 8;
  static const double paddingHorizontal = 24;
  static const double radiusCircle = 24;
  static const double radius = 12;
  static const durationAnimateSlide = Duration(milliseconds: 300);
  static const double marginTopForHeader = 50;
  static const int margin = 16;
}

class AppStringConstant {
  static const String titleName = "MemeSuper";
  static const String editImage = "Edit photo";
}

class ListComponentTabConstant {
  static final listQuickFilterHome = <dynamic>[
    {
      "name": "All",
      "sortType": null,
    },
    {
      "name": "Downloaded",
      "sortType": 1,
    },
    {
      "name": "Favorite",
      "sortType": 2,
    },
    {
      "name": "Hide",
      "sortType": 3,
    },
    {
      "name": "Ohh My God",
      "sortType": null,
    },
    {
      "name": "Porfolio",
      "sortType": null,
    },
  ];
  static final imageIcons = <String>[
    "icon_filter_2",
    "icon_info",
    "icon_sort",
    "icon_filter",
  ];

  static final listTitleLabel = <dynamic>[
    {
      "name": "Nhãn hàng",
      "isChoice": false,
      "type_data": "nhanhang",
      "isPickOne": false,
    },
    {
      "name": "Dòng hàng",
      "isChoice": false,
      "type_data": "line_xman",
      "isPickOne": false,
    },
    {
      "name": "Nghành hàng",
      "isChoice": false,
      "type_data": "nganhhang",
      "isPickOne": false,
    },
    {
      "name": "Chủng loại",
      "isChoice": false,
      "type_data": "chungloai",
      "isPickOne": false,
    },
    {
      "name": "Bộ",
      "isChoice": false,
      "type_data": "bo",
      "isPickOne": true,
    },
    {
      "name": "Cặp",
      "isChoice": false,
      "type_data": "cap",
      "isPickOne": true,
    },
    {
      "name": "Bộ sưu tập",
      "isChoice": false,
      "type_data": "bst",
      "isPickOne": false,
    },
  ];
}
