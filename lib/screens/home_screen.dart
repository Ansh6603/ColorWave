import 'package:color_app/utils/tab_bar.dart';
import 'package:color_app/widgets/color_container.dart';
import 'package:color_app/controllers/color_controller.dart';
import 'package:color_app/widgets/random_color_container.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final ColorController colorController = Get.put(ColorController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Obx(
              () => Text(
                'Selected Color: ${colorController.selectedColorName}',
                style: const TextStyle(color: Colors.black),
              ),
            ),
            backgroundColor: Colors.white,
            bottom: TabBar(
              indicator: CustomTabIndicator(),
              labelColor: Colors.black,
              tabs: const [
                Tab(text: 'A'),
                Tab(text: 'B'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ColorContainer(colorController: colorController),
              RandomColorContainer(colorController: colorController),
            ],
          ),
        ),
      ),
    );
  }
}
