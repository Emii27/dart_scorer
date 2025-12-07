import 'package:dart_scorer/components/scorer.dart';
import 'package:flutter/material.dart';

class GameView extends StatelessWidget {
  const GameView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: Scorer(),);
  }
}
