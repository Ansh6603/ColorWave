import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorController extends GetxController {
  final Map<String, Color> colorMap = {
    'white': Colors.white,
    'blue': Colors.blue,
    'green': Colors.green,
    'red': Colors.red,
  };

  var selectedColor = Colors.white.obs;
  var selectedColorName = 'white'.obs;
  late TabController tabController;

  void changeColor(String colorName) {
    String lowerColor = colorName.toLowerCase();
    if (colorMap.containsKey(lowerColor)) {
      selectedColorName.value = lowerColor;
      selectedColor.value = colorMap[lowerColor]!;
    } else {
      print('Invalid color');
    }
  }

  Color getRandomColor() {
    List<Color> availableColors = colorMap.values.toList();
    availableColors.remove(selectedColor.value);
    Random random = Random();
    return availableColors[random.nextInt(availableColors.length)];
  }
}
