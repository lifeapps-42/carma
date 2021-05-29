import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/deals_provider.dart';
import '../models/deal.dart';

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
                      itemBuilder: (context, i) =>
                          Text('${deals[i].description}'));
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
          onPressed: () async {
            final description = await showDialog<String?>(
                context: context, builder: (context) => NewDealDialog());
            if (description != null) {
              context
                  .read(dealsProvider.notifier)
                  .add(Deal(description: description));
            }
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
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        children: [
          Text('Deal Description'),
          TextField(
            controller: _controller,
            autofocus: true,
          ),
        ],
      ),
      actions: [
        TextButton(
          child: Text('OK'),
          onPressed: () => Navigator.pop(context, _controller.text),
        )
      ],
    );
  }
}
