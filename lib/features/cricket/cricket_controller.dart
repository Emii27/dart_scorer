import 'package:dart_scorer/game_config.dart';
import 'package:dart_scorer/models/player_throw.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'cricket_state.dart';

part 'cricket_controller.g.dart';

@riverpod
class CricketController extends _$CricketController {
  @override
  CricketState build() =>
      CricketState(config: GameConfig.cricket, nbPlayers: 1, currentThrow: []);

  void addThrow(PlayerThrow newThrow) {
    final maxSize = 3;

    var throws = [...state.currentThrow];
    if (state.currentThrow.length >= maxSize) {
      throws = [];
    }
    throws.add(newThrow);
    state = state.copyWith(currentThrow: throws);
  }
}
