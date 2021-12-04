import 'package:cool_alert/cool_alert.dart';
import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GameScreenController extends GetxController {
  var contentAmount = 5.obs;
  GlobalKey<ExpandableBottomSheetState> key = GlobalKey();
  ExpansionStatus expansionStatus = ExpansionStatus.contracted;

  var isWinner = false.obs;

  @override
  void onInit() {
    super.onInit();
    //startDialog();
  }

  void onTapPlus() {
    if (contentAmount < 10) {
      contentAmount++;
    } else {
      isWinner.value = true;
      checkWinner();
    }
    print(contentAmount.value);
  }

  void onTapMinus() {
    if (contentAmount > 0) {
      contentAmount--;
    } else {
      isWinner.value = false;
      checkWinner();
    }
    print(contentAmount.value);
  }

  void checkWinner() {
    if (isWinner.value) {
      redDialog();
    } else {
      blueDialog();
    }
  }

  void redDialog() {
    CoolAlert.show(
      context: Get.context!,
      type: CoolAlertType.error,
      title: '赤の勝ち!!!!',
      confirmBtnText: 'タイトルへ',
      barrierDismissible: false,
      confirmBtnColor: Colors.red,
      onConfirmBtnTap: () {
        Get.back();
        Get.back();
      },
    );
  }

  void blueDialog() {
    CoolAlert.show(
      context: Get.context!,
      type: CoolAlertType.info,
      title: '青の勝ち!!!!',
      confirmBtnText: 'タイトルへ',
      barrierDismissible: false,
      confirmBtnColor: Colors.blue,
      onConfirmBtnTap: () {
        Get.back();
        Get.back();
      },
    );
  }

  void startDialog() {
    showDialog(
      context: Get.context!,
      barrierDismissible: false,
      builder: (_) {
        return AlertDialog(
          title: Text("This is the title"),
          content: Text("This is the content"),
          actions: [
            FlatButton(child: Text("Cancel"), onPressed: () {}),
            FlatButton(
              child: Text("OK"),
              onPressed: () => print('OK'),
            ),
          ],
        );
      },
    );
  }
}
