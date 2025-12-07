import 'package:dart_scorer/utils/space_utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(SpaceUtils.space400),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [FilledButton(onPressed: () {
            context.go('/cricket');
          }, child: Text('Cricket'))],
        ),
      ),
    );
  }
}
