import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'game_screen_controller.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(GameScreenController(), tag: '');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.zero,
        child: AppBar(),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.yellow,
            height: 80,
            width: double.infinity,
            child: IconButton(
              icon: const Icon(Icons.remove),
              onPressed: controller.onTapMinus,
            ),
          ),
          Expanded(
            child: Center(
              child: Obx(() => ExpandableBottomSheet(
                  key: key,
                  animationDurationExtend: const Duration(milliseconds: 200),
                  animationDurationContract: const Duration(milliseconds: 200),
                  animationCurveExpand: Curves.bounceOut,
                  animationCurveContract: Curves.ease,
                  //TODO ここで高さの設定ができる
                  persistentContentHeight:
                      MediaQuery.of(context).size.height + 100,
                  background: Container(
                    color: Colors.blue[800],
                  ),
                  expandableContent: Container(
                    constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height - 150),
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          for (int i = 0;
                              i < controller.contentAmount.value;
                              i++)
                            Container(
                              //TODO　あとで高さを変える
                              height: 50,
                              color: Colors.red[((i % 8) + 1) * 100],
                            ),
                        ],
                      ),
                    ),
                  ),
                  persistentFooter: Container(
                    color: Colors.green,
                    height: 80,
                    width: double.infinity,
                    child: IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: controller.onTapPlus,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
