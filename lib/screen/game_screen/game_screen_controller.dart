import 'package:cool_alert/cool_alert.dart';
import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GameScreenController extends GetxController {
  var contentAmount = 5.obs;
  GlobalKey<ExpandableBottomSheetState> key = GlobalKey();
  ExpansionStatus expansionStatus = ExpansionStatus.contracted;

  var isWinner = false.obs;

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
      confirmBtnText: '次へ',
      barrierDismissible: false,
      confirmBtnColor: Colors.red,
    );
  }

  void blueDialog() {
    CoolAlert.show(
      context: Get.context!,
      type: CoolAlertType.info,
      title: '青の勝ち!!!!',
      confirmBtnText: '次へ',
      barrierDismissible: false,
      confirmBtnColor: Colors.blue,
    );
  }
}
