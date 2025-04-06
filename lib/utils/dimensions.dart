import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  //dynamic height padding and margin
  static double pageView = screenHeight / 2.64;
  static double pageViewContainer = screenHeight / 3.84;
  static double pageViewTextContainer = screenHeight / 7.03;
  static double height10 = screenHeight / 84.4;
  static double height20 = screenHeight / 42.2;
  static double height15 = screenHeight / 56.27;
  static double height30 = screenHeight / 29;

  //dynamic width padding and margin
  static double widht10 = screenWidth / 84.4;
  static double widht20 = screenWidth / 42.2;
  static double widht15 = screenWidth / 56.27;
  static double widht30 = screenWidth / 29;
  //font size
  static double font16 = screenHeight / 54;
  static double font20 = screenHeight / 44;
  static double font26 = screenHeight / 34;

  static double radius20 = screenHeight / 44;
  static double radius30 = screenHeight / 29;

  static double iconSize24 = screenHeight / 35.17;
  static double iconSize16 = screenHeight / 52.75;


  //listview size
  static double listViewImgSize = screenWidth / 3.25;
  static double listViewTextContSize = screenWidth / 3.9;

  //popular food
  static double popularFoodImgSize = screenHeight / 2.41;
}
