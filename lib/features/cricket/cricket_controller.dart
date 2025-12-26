import 'package:dart_scorer/game_config.dart';
import 'package:dart_scorer/models/player_throw.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'cricket_state.dart';

part 'cricket_controller.g.dart';

@riverpod
class CricketController extends _$CricketController {
  @override
  CricketState build() =>
      CricketState(config: GameConfig.cricket, nbPlayers: 1, rounds: []);

  void addThrow(PlayerThrow newThrow) {
    var rounds = [...state.rounds];
    var lastRound = rounds.lastOrNull;

    if (lastRound == null || lastRound.isComplete) {
      lastRound = PlayerRound();
    }
    if (!lastRound.isComplete && lastRound.throws.isNotEmpty) {
      rounds.removeLast();
    }

    lastRound = lastRound.addThrow(newThrow);
    rounds.add(lastRound);
    state = state.copyWith(rounds: rounds);
  }
}
