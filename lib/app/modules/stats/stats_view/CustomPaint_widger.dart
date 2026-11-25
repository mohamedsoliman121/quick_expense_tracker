import 'dart:math' as math;
import 'package:flutter/material.dart';

class CategorySlice {
  final String label;
  final double value;
  final Color color;

  const CategorySlice({
    required this.label,
    required this.value,
    required this.color,
  });
}

class DonutChartPainter extends CustomPainter {
  final List<CategorySlice> slices;
  final double strokeWidth;

  DonutChartPainter({
    required this.slices,
    this.strokeWidth = 34,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final double total = slices.fold(0.0, (sum, item) => sum + item.value);
    if (total <= 0) return;

    final Offset center = Offset(size.width / 2, size.height / 2);
    final double radius = (math.min(size.width, size.height) / 2) - (strokeWidth / 2);
    final Rect rect = Rect.fromCircle(center: center, radius: radius);

    // نبدأ من الأعلى (-pi / 2)
    double startAngle = -math.pi / 2;

    for (final slice in slices) {
      if (slice.value <= 0) continue;

      final double fraction = slice.value / total;
      // نترك فجوة صغيرة جداً بين الشرائح لو أردت
      final double sweepAngle = fraction * 2 * math.pi;

      final Paint paint = Paint()
        ..color = slice.color
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth
        ..strokeCap = StrokeCap.butt;

      canvas.drawArc(rect, startAngle, sweepAngle, false, paint);
      startAngle += sweepAngle;
    }
  }

  @override
  bool shouldRepaint(covariant DonutChartPainter oldDelegate) {
    return oldDelegate.slices != slices || oldDelegate.strokeWidth != strokeWidth;
  }
}