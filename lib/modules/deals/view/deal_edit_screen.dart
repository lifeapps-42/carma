import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/deal.dart';
import '../models/work.dart';
import '../providers/deals_provider.dart';
import '../../../common/widgets/price_tag.dart';
import 'status_tag.dart';

class DealEditScreen extends ConsumerWidget {
  final bool isNew;
  final Deal deal;
  final tempDealProvider;
  DealEditScreen(this.deal, {this.isNew = false})
      : tempDealProvider = StateProvider<Deal>((ref) {
          return deal.copyWith();
        });
  void _save(BuildContext context, Deal newDeal) async {
    if (isNew) {
      await context.read(dealsProvider.notifier).add(newDeal);
      Navigator.pop(context);
    } else {
      context.read(dealsProvider.notifier).edit(newDeal);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final Deal newDeal = watch(tempDealProvider).state;

    void _editCar(BuildContext context) async {
      final String? newCar = await showDialog<String?>(
          context: context,
          builder: (context) => EditStringDialog(
                label: 'Автомобиль',
                initialValue: newDeal.vehicle,
              ));
      if (newCar != null) {
        context.read(tempDealProvider).state =
            newDeal.copyWith(vehicle: newCar);
      }
    }

    void _editClientsName(BuildContext context) async {
      final String? newName = await showDialog<String?>(
          context: context,
          builder: (context) => EditStringDialog(
                label: 'Имя клиента',
                initialValue: newDeal.clientsName,
              ));
      if (newName != null) {
        context.read(tempDealProvider).state =
            newDeal.copyWith(clientsName: newName);
      }
    }

    void _editClientsPhone(BuildContext context) async {
      final String? newPhone = await showDialog<String?>(
          context: context,
          builder: (context) => EditStringDialog(
                label: 'Телефон клиента',
                initialValue: newDeal.clintsPhone,
              ));
      if (newPhone != null) {
        context.read(tempDealProvider).state =
            newDeal.copyWith(clintsPhone: newPhone);
      }
    }

    void _changeStatus(DealStatus newStatus) {
      context.read(tempDealProvider).state =
          newDeal.copyWith(status: newStatus);
    }

    void _applyDiscount([bool remove = false]) async {
      if (remove) {
        context.read(tempDealProvider).state = newDeal.copyWith(discount: null);
        return;
      }
      final String? discount = await showDialog<String?>(
          context: context,
          builder: (context) => EditStringDialog(
                label: 'Скидка в процентах на весь заказ',
              ));
      if (discount != null && discount.isNotEmpty && discount != '0') {
        context.read(tempDealProvider).state =
            newDeal.copyWith(discount: num.tryParse(discount));
      }
    }

    void _addWork(BuildContext context) async {
      final Work? work = await showDialog<Work>(
          context: context, builder: (context) => EditWorkDialog());
      if (work != null) {
        List<Work> _newWorks = List.from(newDeal.works)..add(work);

        context.read(tempDealProvider).state = newDeal.copyWith(
          name: 'updated',
          works: _newWorks,
        );
      }
    }

    void _editWork(
      BuildContext context,
      Work work,
    ) async {
      final Work? newWork = await showDialog<Work>(
          context: context,
          builder: (context) => EditWorkDialog(
                work: work,
              ));
      if (newWork != null) {
        List<Work> _newWorks = [
          for (final Work _work in newDeal.works)
            if (_work == work) newWork else _work
        ];

        context.read(tempDealProvider).state = newDeal.copyWith(
          name: 'updated',
          works: _newWorks,
        );
      }
    }

    void _deleteWork(Work work) {
      List<Work> _newWorks = List.from(newDeal.works)..remove(work);

      context.read(tempDealProvider).state = newDeal.copyWith(
        name: 'updated',
        works: _newWorks,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(newDeal.vehicle ?? 'Авто не указан'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(child: StatusTag(deal: newDeal)),
                Section(
                    title: 'Автомобиль',
                    content: Row(
                      children: [
                        Expanded(
                            child: Text(
                          newDeal.vehicle ?? 'Авто не указан',
                        )),
                        IconButton(
                            onPressed: () => _editCar(context),
                            icon: Icon(Icons.edit_outlined)),
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                Section(
                    title: 'Клиент',
                    content: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                              newDeal.clientsName ?? 'Имя не указано',
                            )),
                            IconButton(
                                onPressed: () => _editClientsName(context),
                                icon: Icon(Icons.edit_outlined)),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                              newDeal.clintsPhone ?? 'Телефон не указан',
                            )),
                            IconButton(
                                onPressed: () => _editClientsPhone(context),
                                icon: Icon(Icons.edit_outlined)),
                          ],
                        ),
                        if (newDeal.clintsPhone != null)
                          Column(
                            children: [
                              Divider(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.message_outlined)),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.call_outlined)),
                                ],
                              ),
                            ],
                          )
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                Section(
                  title: 'Услуги',
                  content: Column(
                    children: [
                      ...List.generate(
                          newDeal.works.length,
                          (i) => WorkTile(
                                work: newDeal.works[i],
                                deleteWork: _deleteWork,
                                editWork: _editWork,
                              )),
                      TextButton.icon(
                          onPressed: () => _addWork(context),
                          icon: Icon(Icons.add),
                          label: Text('Добавить')),
                      Divider(),
                      if (newDeal.discount != null)
                        Row(
                          children: [
                            Text('СКИДКА'),
                            Spacer(),
                            Text('${newDeal.discount}%')
                          ],
                        ),
                      Row(
                        children: [
                          Text('ИТОГО'),
                          Spacer(),
                          PriceTag(
                            price: newDeal.fullCost,
                            fontSize: 18,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Section(
                  title: 'Действия',
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.yellow[700])),
                          onPressed: () =>
                              _applyDiscount(newDeal.discount != null),
                          child: Text(newDeal.discount == null
                              ? 'Сделать скидку'
                              : 'Отменить скидку')),
                      if (newDeal.status == DealStatus.inWork)
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.green[700])),
                            onPressed: () => _changeStatus(DealStatus.done),
                            child: Text('Завершить')),
                      if (newDeal.status == DealStatus.inWork)
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.purple[700])),
                            onPressed: () => _changeStatus(DealStatus.prospect),
                            child: Text('Не в работе')),
                      if (newDeal.status == DealStatus.prospect)
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.blue[700])),
                            onPressed: () => _changeStatus(DealStatus.inWork),
                            child: Text('Машина в работе')),
                      if (newDeal.status == DealStatus.done)
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.blue[700])),
                            onPressed: () => _changeStatus(DealStatus.inWork),
                            child: Text('Возобновить')),
                    ],
                  ),
                ),
                ElevatedButton(
                    onPressed: () => _save(context, newDeal),
                    child: Text('Сохранить')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WorkTile extends StatelessWidget {
  final Work work;
  final Function editWork;
  final Function deleteWork;

  const WorkTile(
      {Key? key,
      required this.work,
      required this.editWork,
      required this.deleteWork})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text(work.name)),
        PriceTag(
          price: work.price,
        ),
        IconButton(
          onPressed: () => editWork(context, work),
          icon: Icon(Icons.edit_outlined),
        ),
        IconButton(
          onPressed: () => deleteWork(work),
          icon: Icon(Icons.delete_outline),
        ),
      ],
    );
  }
}

class EditWorkDialog extends StatefulWidget {
  final Work? work;

  const EditWorkDialog({Key? key, this.work}) : super(key: key);
  @override
  _EditWorkDialogState createState() => _EditWorkDialogState();
}

class _EditWorkDialogState extends State<EditWorkDialog> {
  late TextEditingController _nameController;
  late TextEditingController _priceController;

  @override
  void initState() {
    _nameController = TextEditingController();
    _priceController = TextEditingController();
    if (widget.work != null) {
      _nameController.text = widget.work!.name;
      _priceController.text = widget.work!.price.toString();
    }
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _priceController.dispose();
    super.dispose();
  }

  void _saveWork() {
    final Work work = Work(
        name: _nameController.text,
        price: double.tryParse(_priceController.text)!);
    Navigator.pop(context, work);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Название услуги'),
            controller: _nameController,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Цена'),
            controller: _priceController,
          ),
        ],
      ),
      actions: [
        ElevatedButton(onPressed: () => _saveWork(), child: Text('Сохранить')),
      ],
    );
  }
}

class EditStringDialog extends StatefulWidget {
  final String label;
  final String? initialValue;

  const EditStringDialog({Key? key, required this.label, this.initialValue})
      : super(key: key);
  @override
  _EditStringDialogState createState() => _EditStringDialogState();
}

class _EditStringDialogState extends State<EditStringDialog> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    _controller.text = widget.initialValue ?? '';
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _save() {
    final String newValue = _controller.text;
    Navigator.pop(context, newValue.isEmpty ? null : newValue);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: TextField(
        autofocus: true,
        decoration: InputDecoration(labelText: widget.label),
        controller: _controller,
      ),
      actions: [
        ElevatedButton(onPressed: () => _save(), child: Text('Сохранить')),
      ],
    );
  }
}

class Section extends StatefulWidget {
  final String title;
  final Widget content;

  const Section({Key? key, required this.title, required this.content})
      : super(key: key);

  @override
  _SectionState createState() => _SectionState();
}

class _SectionState extends State<Section> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            widget.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Card(
          child: AnimatedSize(
            curve: Curves.easeOut,
            alignment: Alignment.topCenter,
            vsync: this,
            duration: Duration(milliseconds: 400),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: widget.content,
            ),
          ),
        ),
      ],
    );
  }
}
