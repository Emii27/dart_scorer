import 'package:dart_scorer/components/score_table.dart';
import 'package:dart_scorer/utils/color_utils.dart';
import 'package:dart_scorer/utils/space_utils.dart';
import 'package:flutter/material.dart';

class DraggableSheet extends StatelessWidget {
  final double initialSize;
  final double minSize;
  final double maxSize;

  const DraggableSheet({
    super.key,
    required this.initialSize,
    required this.minSize,
    required this.maxSize,
  });

  const DraggableSheet.min({
    Key? key,
    required double initialSize,
    double maxSize = 1,
  }) : this(
         key: key,
         initialSize: initialSize,
         minSize: initialSize,
         maxSize: maxSize,
       );

  @override
  Widget build(BuildContext context) {
    final scores = ['20', '19', '18', '17', '16', '15', 'BULL'];

    return DraggableScrollableSheet(
      initialChildSize: initialSize,
      minChildSize: minSize,
      maxChildSize: maxSize,
      snap: true,
      builder: (context, scrollController) {
        return Card(
          color: Colors.white,
          margin: .zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(SpaceUtils.space300),
            ),
          ),
          child: ListView(
            controller: scrollController,
            shrinkWrap: true,
            children: [
              Container(
                padding: .symmetric(vertical: SpaceUtils.space100),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(SpaceUtils.space300),
                  ),
                  color: ColorUtils.green,
                ),
                child: Text(
                  "Scores",
                  textAlign: .center,
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(color: Colors.white),
                ),
              ),
              ScoreTable(),
              // ...List.generate(
              //   scores.length,
              //   (index) => ListTile(title: Text(scores[index])),
              // ),
              Container(
                color: ColorUtils.black,
                height: 500,
                child: Center(
                  child: Text(
                    "Soon des trucs ici",
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge?.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
