import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tap_region_app/screen/game_screen/game_screen.dart';
import 'package:tap_region_app/screen/home_screen/home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      //home: GameScreen(),
    );
  }
}
