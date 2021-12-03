import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GameScreenController extends GetxController {
  var contentAmount = 5.obs;
  GlobalKey<ExpandableBottomSheetState> key = GlobalKey();
  ExpansionStatus expansionStatus = ExpansionStatus.contracted;

  void onTapPlus() {
    if (contentAmount < 10) {
      contentAmount++;
    } else {
      print('上の勝ち');
    }
    print(contentAmount.value);
  }

  void onTapMinus() {
    if (contentAmount > 0) {
      contentAmount--;
    } else {
      print('下の勝ち');
    }
    print(contentAmount.value);
  }

  void check() {

  }
}
