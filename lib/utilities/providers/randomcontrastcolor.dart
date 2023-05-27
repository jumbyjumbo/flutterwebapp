import 'dart:math';
import 'package:flutter/material.dart';
import 'package:website/utilities/colors.dart';

class ColorProvider with ChangeNotifier {
  final random = Random();
  Color randomColor = darkgrey;

  void generateRandomColor() {
    Color newColor;
    do {
      newColor = contrastColors[random.nextInt(contrastColors.length)];
    } while (newColor == randomColor);

    randomColor = newColor;
    notifyListeners();
  }
}
