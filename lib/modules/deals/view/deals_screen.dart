import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/deals_provider.dart';
import '../models/deal.dart';
import 'deal_tile.dart';
import 'deal_edit_screen.dart';

class DealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SafeArea(
                  child: Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.shopping_cart_outlined,
                ),
                title: Text('Сделки'),
              ),
              ListTile(
                leading: Icon(
                  Icons.money_outlined,
                ),
                title: Text('Кассы'),
              ),
            ],
          ),
        ),
      ),
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
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DealEditScreen(
                          Deal(description: '', createdAt: DateTime.now()),
                          isNew: true,
                        )));
          }),
    );
  }
}
