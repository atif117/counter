import 'dart:math';

import 'package:flutter/cupertino.dart';

class CounterViewModel extends ChangeNotifier {
  int count = 0;

  int flag = 0;
  int? firstnum;
  Random random = Random();
  int backgroudColor = 0;

  increamentor() {
    if (count < 10) {
      count += 1;
    } else if (count < 100 && count >= 10) {
      count += 10;
    } else if (count >= 100 && count < 1000) {
      count += 100;
    } else if (count >= 1000 && count < 10000) {
      count += 1000;
    } else if (count >= 10000 && count < 100000) {
      count += 10000;
    } else if (count >= 100000 && count < 1000000) {
      count += 100000;
    }
    if (flag == 9) {
      backgroudColor = random.nextInt(10);

      flag = 0;
      for (int i = 0; i < 10; i++) {
        if (backgroudColor == firstnum) {
          backgroudColor = random.nextInt(10);
          break;
        }
      }
      print(backgroudColor);
    }
    firstnum = backgroudColor;
    flag++;
    // if (count == 10) count += 10;
    notifyListeners();
  }
}
