import 'package:flutter/material.dart';

class CustomTabIndicator extends Decoration {
  @override
  _CustomPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CustomPainter(this, onChanged);
  }
}

class _CustomPainter extends BoxPainter {
  final CustomTabIndicator decoration;

  _CustomPainter(this.decoration, VoidCallback? onChanged) : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Rect rect = offset & configuration.size!;
    final Paint paint = Paint();
    paint.color = Colors.yellow;
    paint.style = PaintingStyle.fill;
    canvas.drawRRect(
        RRect.fromRectAndRadius(rect, const Radius.circular(20)), paint);
  }
}
