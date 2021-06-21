import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/deals_provider.dart';
import '../models/deal.dart';
import 'deal_tile.dart';
import 'deal_edit_screen.dart';
import '../../../common/widgets/main_drawer.dart';

class DealsScreen extends StatelessWidget {
  static const String route = '/dealsScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text('Сделки'),
      ),
      body: Consumer(
        builder: (context, watch, _) {
          final dealsState = watch(dealsProvider);
          return dealsState.when(
              data: (deals) {
                if (deals.isEmpty) {
                  return Center(
                    child: Text('Ничего нет'),
                  );
                } else {
                  return ListView.builder(
                      itemCount: deals.length,
                      itemBuilder: (context, i) => ProviderScope(overrides: [
                            currentDealProvider.overrideWithValue(deals[i])
                          ], child: const DealTile()));
                }
              },
              loading: () => Center(
                    child: CircularProgressIndicator(),
                  ),
              error: (e, __) => Center(
                    child: Text(e.toString()),
                  ));
        },
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.pushNamed(context, DealEditScreenRoute.route,
                arguments: DealEditScreenArgs(
                    Deal(description: '', createdAt: DateTime.now()),
                    isNew: true));
          }),
    );
  }
}
