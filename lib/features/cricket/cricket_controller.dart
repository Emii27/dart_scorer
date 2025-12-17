import 'package:dart_scorer/game_config.dart';
import 'package:dart_scorer/models/player_throw.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'cricket_state.dart';

part 'cricket_controller.g.dart';

@riverpod
class CricketController extends _$CricketController {
  @override
  CricketState build() =>
      CricketState(config: GameConfig.cricket, nbPlayers: 1, throws: []);

  void addThrow(PlayerThrow newThrow) {
    print(newThrow.value);
    final maxHistorySize = state.nbPlayers * 3;

    var throws = [...state.throws];
    if (state.throws.length >= maxHistorySize) {
      throws.removeAt(0);
    }
    throws.add(newThrow);
    state = state.copyWith(throws: throws);
  }
}
