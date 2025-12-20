import 'package:dart_scorer/components/draggable_sheet.dart';
import 'package:dart_scorer/components/scorer.dart';
import 'package:dart_scorer/components/throw_display.dart';
import 'package:dart_scorer/features/cricket/cricket_controller.dart';
import 'package:dart_scorer/game_config.dart';
import 'package:dart_scorer/models/player_throw.dart';
import 'package:dart_scorer/utils/space_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CricketView extends ConsumerStatefulWidget {
  const CricketView({super.key});

  @override
  ConsumerState<CricketView> createState() => _CricketViewState();
}

class _CricketViewState extends ConsumerState<CricketView> {
  final _contentKey = GlobalKey();
  double _sheetInitialSize = 0.33;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _calculateSheetSize());
  }

  void _calculateSheetSize() {
    final screenSize = MediaQuery.of(context).size.height;
    final contentSize = _contentKey.currentContext?.size?.height;

    if (contentSize == null || !mounted) return;

    final sheetSize =
        (screenSize - (contentSize + SpaceUtils.space200)) / screenSize;

    setState(() {
      _sheetInitialSize = sheetSize.clamp(.1, 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              key: _contentKey,
              padding: const .all(SpaceUtils.space200),
              child: _buildBody(ref),
            ),
            Positioned(right: 0, child: CloseButton()),
            DraggableSheet.min(initialSize: _sheetInitialSize),
          ],
        ),
      ),
    );
  }

  Widget _buildBody(WidgetRef ref) {
    return Column(
      mainAxisSize: .min,
      spacing: SpaceUtils.space100,
      children: [
        Scorer(
          gameConfig: GameConfig.cricket,
          sectorOnTap: (PlayerThrow playerThrow) {
            ref.read(cricketControllerProvider.notifier).addThrow(playerThrow);
          },
        ),
        ThrowDisplay(),
      ],
    );
  }
}
