import 'package:color_app/controllers/color_controller.dart';
import 'package:flutter/material.dart';

class RandomColorContainer extends StatelessWidget {
  final ColorController colorController;

  const RandomColorContainer({required this.colorController, super.key});

  @override
  Widget build(BuildContext context) {
    Color randomColor = colorController.getRandomColor();
    return Container(
      color: randomColor,
    );
  }
}
