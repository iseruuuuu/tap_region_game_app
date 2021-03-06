import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tap_region_app/screen/result/result_screen_controller.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO タグの変更が必要
    final controller = Get.put(ResultScreenController(), tag: '');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'タイトル未定',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            ElevatedButton(
              onPressed: controller.onTap,
              child: const Text('次へ'),
            )
          ],
        ),
      ),
    );
  }
}
