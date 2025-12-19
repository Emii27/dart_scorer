import 'package:dart_scorer/game_config.dart';
import 'package:dart_scorer/models/player_throw.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cricket_state.freezed.dart';

@freezed
abstract class CricketState with _$CricketState {
  const factory CricketState({
    required GameConfig config,
    required int nbPlayers,
    required List<PlayerThrow> currentThrow,
  }) = _CricketState;
}
