import 'package:color_app/controllers/color_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorContainer extends StatelessWidget {
  final ColorController colorController;

  const ColorContainer({required this.colorController, super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _textController = TextEditingController();

    return Obx(() {
      _textController.text = colorController.selectedColorName.value;
      return Container(
        padding: const EdgeInsets.all(16),
        color: colorController.selectedColor.value,
        child: Center(
          child: TextField(
            controller: _textController,
            onChanged: (colorName) {
              colorController.changeColor(colorName);
            },
            decoration: const InputDecoration(
              labelText: 'Color',
              labelStyle: TextStyle(color: Colors.black),
            ),
          ),
        ),
      );
    });
  }
}
