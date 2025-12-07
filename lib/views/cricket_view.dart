import 'package:dart_scorer/components/scorer.dart';
import 'package:dart_scorer/game_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CricketView extends ConsumerWidget {
   const CricketView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('prout'),),
      body: Scorer(gameConfig: GameConfig.cricket),
    );
  }
}
