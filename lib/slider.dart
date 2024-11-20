
import 'package:flutter/material.dart';

class CustomSliderThumbCircle extends SliderComponentShape {
  final double thumbRadius;
  final double value;

  CustomSliderThumbCircle({required this.thumbRadius, required this.value});

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size(thumbRadius * 2, thumbRadius * 2);
  }

  @override
  void paint(
      PaintingContext context,
      Offset center, {
        required Animation<double> activationAnimation,
        required Animation<double> enableAnimation,
        required bool isDiscrete,
        required TextPainter labelPainter,
        required RenderBox parentBox,
        required SliderThemeData sliderTheme,
        required TextDirection textDirection,
        required double value,
        required double textScaleFactor,
        required Size sizeWithOverflow,
      }) {
    final Canvas canvas = context.canvas;

    // Draw the bubble
    final Paint paint = Paint()..color = Colors.red;
    final Offset bubbleCenter = Offset(center.dx, center.dy - thumbRadius - 15);
    canvas.drawCircle(bubbleCenter, thumbRadius, paint);

    // Draw the text in the bubble
    final textSpan = TextSpan(
      text: this.value.round().toString(),
      style: TextStyle(
        fontSize: thumbRadius - 5,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
    final textPainter = TextPainter(
      text: textSpan,
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    final textOffset = Offset(
      bubbleCenter.dx - textPainter.width / 2,
      bubbleCenter.dy - textPainter.height / 2,
    );
    textPainter.paint(canvas, textOffset);

    // Draw the default thumb circle
    final Paint thumbPaint = Paint()..color = sliderTheme.thumbColor!;
    canvas.drawCircle(center, thumbRadius / 2, thumbPaint);
  }
}
