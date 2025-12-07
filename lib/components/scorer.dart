import 'dart:math';

import 'package:dart_scorer/components/radial_painter.dart';
import 'package:flutter/material.dart';

class Scorer extends StatefulWidget {
  const Scorer({super.key});

  @override
  State<Scorer> createState() => _ScorerState();
}

class _ScorerState extends State<Scorer> {
  var selectedSector = -1;
  var tapPosition = Offset.zero;
  var tapPosRelative = Offset.zero;
  var tapInsideCirle = false;
  var progress = 0.0;

  @override
  Widget build(BuildContext context) {
    final labels = {
      0: '20',
      1: '18',
      2: '',
      3: '15',
      4: '17',
      5: '19',
      6: '16',
      7: '',
      8: '',
    };
    final screenSize = MediaQuery.of(context).size;
    final padding = 16.0;
    final widgetSize = screenSize.width - padding * 2;
    final painterConfig = RadialPainterConfig(
      radius: widgetSize / 2,
      labels: labels,
    );
    final textStyle = TextStyle(fontSize: 20.0);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Column(
        children: [
          Container(
            height: widgetSize,
            width: widgetSize,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: GestureDetector(
              onTapDown: (details) => _onTap(details, painterConfig),
              onTapUp: (_) => _resetSelectedSector(),
              onTapCancel: () => _resetSelectedSector(),
              child: CustomPaint(
                painter: RadialPainter(
                  config: painterConfig,
                  selectedSector: selectedSector,
                  progress: progress,
                ),
              ),
            ),
          ),
          SizedBox(height: 32.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('globalPos:', style: textStyle),
              Text('$tapPosition', style: textStyle),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('pos:', style: textStyle),
              Text('$tapPosRelative', style: textStyle),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Tap Sector:', style: textStyle),
              Text('$selectedSector', style: textStyle),
            ],
          ),
        ],
      ),
    );
  }

  void _onTap(TapDownDetails details, RadialPainterConfig config) {
    final globalPos = details.localPosition;
    final pos = config.getCenterRelativeOffset(globalPos);

    final angle =
        (atan2(pos.dy, pos.dx) + config.angleOffset + 2 * pi) % (2 * pi);
    var sectorTap = angle ~/ config.sectorAngle;

    if(pos.distance <= config.radiusBull) {
      sectorTap = config.labels.length;
    }
    /*
    var newProgress = progress;
    if (sectorTap == 0) {
      newProgress = switch (newProgress) {
        0.0 => 0.4,
        0.4 => 0.7,
        0.7 => 1.0,
        _ => 0.0,
      };
    }*/

    setState(() {
      tapPosition = globalPos;
      tapPosRelative = pos;
      selectedSector = sectorTap;
      // progress = newProgress;
    });
  }

  void _resetSelectedSector() {
    setState(() => selectedSector = -1);
  }
}
