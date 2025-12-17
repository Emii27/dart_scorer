import 'package:dart_scorer/models/target_sector.dart';

enum GameConfig {
  points(
    sectors: [
      .new(20),
      .new(1),
      .new(18),
      .new(4),
      .new(13),
      .new(6),
      .new(10),
      .new(15),
      .new(2),
      .new(17),
      .new(3),
      .new(19),
      .new(7),
      .new(16),
      .new(8),
      .new(11),
      .new(14),
      .new(9),
      .new(12),
      .new(5),
    ],
  ),
  cricket(
    sectors: [
      .new(20),
      .new(18),
      .zero(),
      .new(15),
      .new(17),
      .new(19),
      .new(16),
      .zero(),
      .zero(),
    ],
  );

  final List<TargetSector> sectors;

  const GameConfig({required this.sectors});

  TargetSector? getSectorByIndex(int index) {
    return index == sectors.length
        ? TargetSector.bull()
        : sectors.elementAtOrNull(index);
  }
}
