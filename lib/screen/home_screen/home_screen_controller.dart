import 'package:get/get.dart';
import 'package:tap_region_app/screen/game_screen/game_screen.dart';

class HomeScreenController extends GetxController {
  var highScore = 0.obs;

  @override
  void onInit() {
    super.onInit();
    _sharedPreference();
  }

  void _sharedPreference() async {
  }


  void onTap() {
    Get.to(() => const GameScreen());
  }
}
