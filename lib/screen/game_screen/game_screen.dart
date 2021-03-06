import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tap_region_app/component/button_item.dart';
import 'game_screen_controller.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(GameScreenController(), tag: '');
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.zero,
        child: AppBar(),
      ),
      body: Column(
        children: [
          ButtonItem(
            icon: const Icon(
              Icons.circle,
              color: Colors.white,
              size: 50,
            ),
            color: Colors.blue,
            onTap: controller.onTapMinus,
          ),
          Expanded(
            child: Center(
              child: Obx(
                () => ExpandableBottomSheet(
                  key: key,
                  animationDurationExtend: const Duration(milliseconds: 200),
                  animationDurationContract: const Duration(milliseconds: 200),
                  animationCurveExpand: Curves.bounceOut,
                  animationCurveContract: Curves.ease,
                  //TODO ここで高さの設定ができる
                  persistentContentHeight: deviceSize.height + 100,
                  background: Container(
                    color: Colors.blue,
                  ),
                  expandableContent: Container(
                    constraints: BoxConstraints(maxHeight: deviceSize.height - 150),
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          for (int i = 0;
                              i < controller.contentAmount.value;
                              i++)
                            Container(
                              //TODO　あとで高さを変える
                              //height: 50,
                              height: deviceSize.height / 12,
                              //color: Colors.red[((i % 8) + 1) * 100],
                              color: Colors.red,
                            ),
                        ],
                      ),
                    ),
                  ),
                  persistentFooter: ButtonItem(
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 50,
                    ),
                    color: Colors.red,
                    onTap: controller.onTapPlus,
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
