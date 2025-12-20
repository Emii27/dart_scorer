import 'dart:math';

import 'package:dart_scorer/components/radial_painter.dart';
import 'package:dart_scorer/game_config.dart';
import 'package:dart_scorer/models/player_throw.dart';
import 'package:dart_scorer/utils/space_utils.dart';
import 'package:flutter/material.dart';

class Scorer extends StatefulWidget {
  final GameConfig gameConfig;
  final ValueChanged<PlayerThrow> sectorOnTap;

  // var progress = 0.0;

  const Scorer({
    super.key,
    required this.gameConfig,
    required this.sectorOnTap,
  });

  @override
  State<Scorer> createState() => _ScorerState();
}

class _ScorerState extends State<Scorer> {
  ThrowType selectedThrowType = .single;
  int selectedSector = -1;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final widgetSize = screenSize.width - SpaceUtils.space200 * 2;

    final painterConfig = RadialPainterConfig(
      radius: widgetSize / 2,
      sectors: widget.gameConfig.sectors,
    );

    return Column(
      crossAxisAlignment: .stretch,
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
                progress: 0.0,
              ),
            ),
          ),
        ),
        SizedBox(height: SpaceUtils.space200),
        SegmentedButton<ThrowType>(
          segments: [
            ButtonSegment(value: .single, label: Text("Single")),
            ButtonSegment(value: .double, label: Text("Double")),
            ButtonSegment(value: .triple, label: Text("Triple")),
          ],
          selected: {selectedThrowType},
          onSelectionChanged: (newSelection) => setState(() {
            selectedThrowType = newSelection.first;
          }),
        ),
      ],
    );
  }

  void _onTap(TapDownDetails details, RadialPainterConfig config) {
    final globalPos = details.localPosition;
    final pos = config.getCenterRelativeOffset(globalPos);

    final angle =
        (atan2(pos.dy, pos.dx) + config.angleOffset + 2 * pi) % (2 * pi);
    var sectorTap = angle ~/ config.sectorAngle;

    if (pos.distance <= config.radiusBull) {
      sectorTap = config.sectors.length;
    }

    // Triple Bull
    if (sectorTap == 9 && selectedThrowType == ThrowType.triple) return;

    final sector = widget.gameConfig.getSectorByIndex(sectorTap);
    // No sector found
    if (sector == null) return;

    widget.sectorOnTap(
      PlayerThrow(value: sector.value, throwType: selectedThrowType),
    );

    setState(() {
      selectedSector = sectorTap;
      selectedThrowType = .single;
    });
    // ref.read(cricketControllerProvider.notifier).addThrow(sectorTap);
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
  }

  /// Set the value of `selectedSector` to `-1`.
  void _resetSelectedSector() {
    setState(() {
      selectedSector = -1;
    });
  }
}
