import 'package:dart_scorer/features/cricket/cricket_controller.dart';
import 'package:dart_scorer/utils/space_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThrowDisplay extends ConsumerWidget {
  const ThrowDisplay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playerName = "Player";
    final throws = ref.watch(cricketControllerProvider).currentThrow;

    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: SpaceUtils.space200,
          vertical: SpaceUtils.space100,
        ),
        child: Row(
          children: [
            Flexible(
              flex: 4,
              fit: FlexFit.tight,
              child: Text(
                "$playerName:",
                overflow: .ellipsis,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Flexible(
              flex: 3,
              fit: FlexFit.tight,
              child: Row(
                spacing: SpaceUtils.space100,
                children: List.generate(3, (index) {
                  final playerThrow = throws.elementAtOrNull(index);

                  return Expanded(
                    child: Container(
                      padding: EdgeInsets.all(SpaceUtils.space50),
                      color: Colors.white,
                      child: Text(
                        playerThrow != null ? playerThrow.toString() : "",
                        textAlign: .center,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
