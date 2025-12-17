import 'package:dart_scorer/utils/space_utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(SpaceUtils.space400),
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .stretch,
          children: [
            Text(
              'Dart Scorer',
              textAlign: .center,
              style: textTheme.displayMedium?.copyWith(color: Colors.black),
            ),
            SizedBox(height: SpaceUtils.space500),
            FilledButton(
              onPressed: () {
                context.go('/cricket');
              },
              child: Text('Cricket'),
            ),
          ],
        ),
      ),
    );
  }
}
