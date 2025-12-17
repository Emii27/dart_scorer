import 'package:dart_scorer/components/scorer.dart';
import 'package:dart_scorer/features/cricket/cricket_controller.dart';
import 'package:dart_scorer/game_config.dart';
import 'package:dart_scorer/models/player_throw.dart';
import 'package:dart_scorer/utils/space_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CricketView extends ConsumerWidget {
  const CricketView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final throws = ref.watch(cricketControllerProvider).throws;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Cricket'),
        actions: [CloseButton()],
      ),
      body: Padding(
        padding: const .all(SpaceUtils.space200),
        child: Column(
          children: [
            Scorer(
              gameConfig: GameConfig.cricket,
              sectorOnTap: (PlayerThrow playerThrow) {
                ref
                    .read(cricketControllerProvider.notifier)
                    .addThrow(playerThrow);
              },
            ),
            SizedBox(height: SpaceUtils.space400),
            ...throws.map(
              (playerThrow) =>
                  Text('${playerThrow.value} ; ${playerThrow.throwType}'),
            ),
          ],
        ),
      ),
    );
  }
}
