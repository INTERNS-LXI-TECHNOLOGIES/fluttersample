import 'package:customerapp/model/config.dart';
import 'package:get/get.dart';

class Util {
  static void showSnackBar(String title, String message,
      {Duration duration}) async {
    if (duration != null)
      await Get.snackbar(title, message, duration: duration);
    else
      await Get.snackbar(title, message,
          duration: Duration(seconds: Config.SNACKBAR_WAIT_FOR_DISPLAY));
  }
}
