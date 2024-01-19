import 'package:flutter/material.dart';
import 'package:vector_math/vector_math.dart';
import 'package:money_canvas/common/colors.dart';

class CustomArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var rect = Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: size.width / 2);

    var gradientColor = const LinearGradient(colors: [
      AppColor.secondary,
      AppColor.secondary50,
      AppColor.secondary,
    ], begin: Alignment.topCenter, end: Alignment.bottomCenter);

    Paint activPaint = Paint()..shader = gradientColor.createShader(rect);

    activPaint.style = PaintingStyle.stroke;
    activPaint.strokeWidth = 15;
    activPaint.strokeCap = StrokeCap.round;

    Paint backgroundPaint = Paint();

    backgroundPaint.color = AppColor.grey40.withOpacity(0.4);
    backgroundPaint.style = PaintingStyle.stroke;
    backgroundPaint.strokeWidth = 15;
    backgroundPaint.strokeCap = StrokeCap.round;

    canvas.drawArc(rect, radians(135), radians(270), false, backgroundPaint);
    canvas.drawArc(rect, radians(135), radians(200), false, activPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
