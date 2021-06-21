import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/widgets/main_drawer.dart';
import '../../../common/widgets/edit_string_dialog.dart';
import 'money_box_tile.dart';
import '../providers/money_box_provider.dart';
import '../models/money_box.dart';

class MoneyBoxesScreen extends StatelessWidget {
  static const String route = '/moneyBoxesScreen';
  const MoneyBoxesScreen({Key? key}) : super(key: key);

  void addBox(BuildContext context) async {
    final String? newBoxName = await showDialog<String?>(
        context: context,
        builder: (context) => EditStringDialog(label: 'Название Кассы'));
    if (newBoxName != null) {
      context
          .read(moneyBoxesProvider.notifier)
          .addMoneyBox(MoneyBox(name: newBoxName));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Кассы'),
      ),
      drawer: MainDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => addBox(context),
        child: Icon(Icons.add),
      ),
      body: Consumer(builder: (context, watch, _) {
        final moneyBoxesState = watch(moneyBoxesProvider);

        return moneyBoxesState.when(
          loading: () => Center(child: CircularProgressIndicator()),
          error: (e, _) => Center(child: Text(e.toString())),
          data: (boxes) {
            return boxes.isEmpty
                ? Center(
                    child: Text('Ничего нет'),
                  )
                : GridView.builder(
                    itemCount: boxes.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 1),
                    itemBuilder: (context, i) => ProviderScope(overrides: [
                          currentMoneyBoxProvider.overrideWithValue(boxes[i])
                        ], child: const MoneyBoxTile()));
          },
        );
      }),
    );
  }
}
