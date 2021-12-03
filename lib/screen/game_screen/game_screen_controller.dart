import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GameScreenController extends GetxController {
  var contentAmount = 0.obs;

  GlobalKey<ExpandableBottomSheetState> key = GlobalKey();
  ExpansionStatus expansionStatus = ExpansionStatus.contracted;

  void onTapPlus() {
    if (contentAmount < 10) contentAmount++;
    print(contentAmount.value);
  }

  void onTapMinus() {
    if (contentAmount > 0) contentAmount--;
    print(contentAmount.value);
  }

  void onTap() {}
}
