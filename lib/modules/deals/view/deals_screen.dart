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
                          Deal(description: ''),
                          isNew: true,
                        )));
          }),
    );
  }
}

class NewDealDialog extends StatefulWidget {
  const NewDealDialog({
    Key? key,
  }) : super(key: key);

  @override
  _NewDealDialogState createState() => _NewDealDialogState();
}

class _NewDealDialogState extends State<NewDealDialog> {
  late TextEditingController _descriptionController;
  late TextEditingController _vehicleController;

  @override
  void initState() {
    _descriptionController = TextEditingController();
    _vehicleController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _descriptionController.dispose();
    _vehicleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Автомобиль'),
          TextField(
            controller: _vehicleController,
            autofocus: true,
          ),
          Text('Что делаем?'),
          TextField(
            controller: _descriptionController,
            autofocus: true,
          ),
        ],
      ),
      actions: [
        TextButton(
          child: Text('OK'),
          onPressed: () => Navigator.pop(
              context,
              Deal(
                description: _descriptionController.text,
                vehicle: _vehicleController.text,
              )),
        )
      ],
    );
  }
}
