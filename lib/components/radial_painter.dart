import 'dart:math';

import 'package:dart_scorer/models/target_sector.dart';
import 'package:dart_scorer/utils/color_utils.dart';
import 'package:flutter/material.dart';

class RadialPainterConfig {
  final double radius;
  final List<TargetSector> sectors;

  RadialPainterConfig({required this.radius, required this.sectors});

  double get radiusBull => radius * 0.33;

  int get nbSector => sectors.length;

  Offset get center => Offset(radius, radius);

  double get sectorAngle => 2 * pi / nbSector;

  double get angleOffset => (pi + sectorAngle) / 2;

  Offset getCenterRelativeOffset(Offset offset) {
    return Offset(offset.dx - radius, offset.dy - radius);
  }
}

class RadialPainter extends CustomPainter {
  final RadialPainterConfig config;
  final int? selectedSector;
  final double progress;

  RadialPainter({
    required this.config,
    this.selectedSector,
    required this.progress,
  });

  @override
  void paint(Canvas canvas, Size size) {
    for (var index = 0; index < config.sectors.length; index++) {
      _drawSector(canvas, index);
      _drawSectorText(canvas, size, index);
    }
    _drawBull(canvas, size, selectedSector == config.sectors.length);
    // _drawProgress(canvas);
  }

  @override
  bool? hitTest(Offset position) {
    final centerRelativePos = config.getCenterRelativeOffset(position);
    return centerRelativePos.distance <= config.radius;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

  Paint _getPaint(int index) {
    var paint = Paint()..style = PaintingStyle.fill;

    // Paint zero
    if (index == 2 || index >= 7) {
      paint.color = ColorUtils.black;
      return paint;
    }

    // Paint score
    paint.color = index % 2 == 0 ? ColorUtils.white : ColorUtils.lightGrey;
    if (selectedSector == index) {
      paint.color = paint.color.withAlpha((255 * 0.75).toInt());
    }
    return paint;
  }

  void _drawSector(Canvas canvas, int index) {
    final paintSector = _getPaint(index);
    final startAngle = index * config.sectorAngle - config.angleOffset;

    canvas.drawArc(
      Rect.fromCircle(center: config.center, radius: config.radius),
      startAngle,
      config.sectorAngle,
      true,
      paintSector,
    );
  }

  void _drawSectorText(Canvas canvas, Size size, int index) {
    final textPainter = TextPainter(
      text: TextSpan(
        text: config.sectors[index].label,
        style: TextStyle(
          color: ColorUtils.black,
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(maxWidth: size.width);

    final midAngle =
        (index * config.sectorAngle) +
        (config.sectorAngle / 2) -
        config.angleOffset;
    final textOffset = config.radius * 0.8;
    final dx = textOffset * cos(midAngle);
    final dy = textOffset * sin(midAngle);
    final offset = Offset(
      config.center.dx + dx - (textPainter.width / 2),
      config.center.dy + dy - (textPainter.height / 2),
    );

    textPainter.paint(canvas, offset);
  }

  void _drawBull(Canvas canvas, Size size, bool isTapped) {
    final sector = TargetSector.bull();
    final paintBackGround = Paint()
      ..style = PaintingStyle.fill
      ..color = ColorUtils.white;
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..color = ColorUtils.darkGrey.withAlpha((isTapped ? 255 * 0.75 : 255).toInt());

    // Draw background
    canvas.drawCircle(config.center, config.radius * 0.33, paintBackGround);

    // Draw actual bull
    canvas.drawCircle(config.center, config.radius * 0.33, paint);

    final textPainter = TextPainter(
      text: TextSpan(
        text: sector.label,
        style: TextStyle(
          color: ColorUtils.white,
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(maxWidth: size.width);

    final offset = Offset(
      config.center.dx - (textPainter.width / 2),
      config.center.dy - (textPainter.height / 2),
    );
    textPainter.paint(canvas, offset);
  }

  // void _drawProgress(Canvas canvas) {
  //   final paintProgress = Paint()
  //     ..style = PaintingStyle.fill
  //     ..color = Colors.green.withAlpha((255 * 0.5).toInt());
  //
  //   canvas.drawArc(
  //     Rect.fromCircle(center: config.center, radius: config.radius * progress),
  //     0 - config.angleOffset,
  //     config.sectorAngle,
  //     true,
  //     paintProgress,
  //   );
  // }
}
