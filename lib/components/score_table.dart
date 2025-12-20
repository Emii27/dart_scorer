import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScoreTable extends ConsumerWidget {
  const ScoreTable({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DataTable(
      columns: [
        DataColumn(label: Text("")),
        DataColumn(label: Text("Player 1")),
      ],
      rows: _buildRows(context),
    );
  }

  List<DataRow> _buildRows(BuildContext context) {
    final scoreStyle = Theme.of(
      context,
    ).textTheme.titleMedium?.copyWith(fontWeight: .bold);

    return [
      DataRow(
        cells: [
          DataCell(Text("20", style: scoreStyle)),
          DataCell(Icon(Icons.done)),
        ],
      ),
      DataRow(cells: [DataCell(Text("19")), DataCell(Icon(Icons.done_all))]),
      DataRow(cells: [DataCell(Text("18")), DataCell(Icon(Icons.remove_done))]),
    ];
  }
}
