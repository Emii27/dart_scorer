// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_throw.freezed.dart';

@freezed
abstract class PlayerRound with _$PlayerRound {
  const PlayerRound._();

  const factory PlayerRound({
    @Default(3) int throwsPerRound,
    @Default([]) List<PlayerThrow> throws,
  }) = _PlayerRound;

  bool get isComplete => throws.length == throwsPerRound;

  PlayerRound addThrow(PlayerThrow playerThrow) {
    if (throws.length >= throwsPerRound) {
      return this;
    }
    return copyWith(throws: [...throws, playerThrow]);
  }
}

class PlayerThrow {
  final int value;
  final ThrowType throwType;

  PlayerThrow({required this.value, required this.throwType});

  @override
  String toString() {
    return switch (throwType) {
      .single => '$value',
      .double => 'D$value',
      .triple => 'T$value',
    };
  }
}

enum ThrowType { single, double, triple }

/*
class PlayerRound {
  final int throwsPerRound;
  final List<PlayerThrow> _throws;

  PlayerRound() : throwsPerRound = 3, _throws = [];

  List<PlayerThrow> get throws => _throws;

  bool get isComplete => _throws.length == throwsPerRound;

  void addThrow(PlayerThrow playerThrow) {
    if (_throws.length >= throwsPerRound) {
      return;
    }

    _throws.add(playerThrow);
  }
}
*/
