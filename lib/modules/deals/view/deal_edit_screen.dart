import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/deal.dart';
import '../models/work.dart';
import '../models/direct_cost.dart';
import '../providers/deals_provider.dart';
import '../../../common/widgets/price_tag.dart';
import '../../../common/widgets/edit_string_dialog.dart';
import 'status_tag.dart';

class DealEditScreenArgs {
  final bool isNew;
  final Deal deal;

  DealEditScreenArgs(this.deal, {this.isNew = false});
}

class DealEditScreenRoute extends StatelessWidget {
  static const String route = '/dealEditScreen';
  const DealEditScreenRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DealEditScreenArgs args = ModalRoute.of(context)!.settings.arguments as DealEditScreenArgs;
    return DealEditScreen(
      args.deal, isNew: args.isNew,
    );
  }
}

class DealEditScreen extends ConsumerWidget {
  final bool isNew;
  final Deal deal;
  final StateProvider<Deal> tempDealProvider;
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
    final bool hasChanges = watch(tempDealProvider).state != deal;

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

    void _addDirectCost(BuildContext context) async {
      final DirectCost? newCost = await showDialog<DirectCost?>(
          context: context, builder: (context) => EditDirectCostDialog());
      if (newCost != null) {
        List<DirectCost> _newCosts = List.from(newDeal.directCosts)
          ..add(newCost);

        context.read(tempDealProvider).state = newDeal.copyWith(
          directCosts: _newCosts,
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

    void _editDirectCost(
      BuildContext context,
      DirectCost directCost,
    ) async {
      final DirectCost? newCost = await showDialog<DirectCost>(
          context: context,
          builder: (context) => EditDirectCostDialog(
                cost: directCost,
              ));
      if (newCost != null) {
        List<DirectCost> _newCosts = [
          for (final DirectCost _cost in newDeal.directCosts)
            if (_cost == directCost) newCost else _cost
        ];

        context.read(tempDealProvider).state = newDeal.copyWith(
          directCosts: _newCosts,
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

    void _deleteDirectCost(DirectCost cost) {
      List<DirectCost> _newCosts = List.from(newDeal.directCosts)..remove(cost);

      context.read(tempDealProvider).state = newDeal.copyWith(
        directCosts: _newCosts,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(newDeal.vehicle ?? 'Авто не указан'),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                child: Text('Отмена'),
                onPressed: () => Navigator.pop(context),
              ),
              SizedBox(
                width: 20,
              ),
              if (hasChanges)
                ElevatedButton(
                    onPressed: () => _save(context, newDeal),
                    child: Text('Сохранить')),
            ],
          ),
        ),
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
                MarginResult(deal: newDeal),
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
                SizedBox(
                  height: 20,
                ),
                Section(
                  title: 'Расходы',
                  content: Column(
                    children: [
                      ...List.generate(
                          newDeal.directCosts.length,
                          (i) => DirectCostTile(
                                directCost: newDeal.directCosts[i],
                                deleteCost: _deleteDirectCost,
                                editCost: _editDirectCost,
                              )),
                      TextButton.icon(
                          onPressed: () => _addDirectCost(context),
                          icon: Icon(Icons.add),
                          label: Text('Добавить')),
                      Divider(),
                      Row(
                        children: [
                          Text('ИТОГО РАСХОДЫ'),
                          Spacer(),
                          PriceTag(
                            price: newDeal.fullDirectCost,
                            fontSize: 18,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
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

class DirectCostTile extends StatelessWidget {
  final DirectCost directCost;
  final Function editCost;
  final Function deleteCost;

  const DirectCostTile(
      {Key? key,
      required this.directCost,
      required this.editCost,
      required this.deleteCost})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text(directCost.name)),
        PriceTag(
          price: directCost.price,
        ),
        IconButton(
          onPressed: () => editCost(context, directCost),
          icon: Icon(Icons.edit_outlined),
        ),
        IconButton(
          onPressed: () => deleteCost(directCost),
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

  void _saveCost() {
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
        ElevatedButton(onPressed: () => _saveCost(), child: Text('Сохранить')),
      ],
    );
  }
}

class EditDirectCostDialog extends StatefulWidget {
  final DirectCost? cost;

  const EditDirectCostDialog({Key? key, this.cost}) : super(key: key);
  @override
  _EditDirectCostDialogState createState() => _EditDirectCostDialogState();
}

class _EditDirectCostDialogState extends State<EditDirectCostDialog> {
  late TextEditingController _nameController;
  late TextEditingController _priceController;

  @override
  void initState() {
    _nameController = TextEditingController();
    _priceController = TextEditingController();
    if (widget.cost != null) {
      _nameController.text = widget.cost!.name;
      _priceController.text = widget.cost!.price.toString();
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
    final DirectCost cost = DirectCost(
        name: _nameController.text,
        price: double.tryParse(_priceController.text)!);
    Navigator.pop(context, cost);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Название расхода'),
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

class MarginResult extends StatelessWidget {
  final Deal deal;
  const MarginResult({Key? key, required this.deal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double margin = deal.fullCost - deal.fullDirectCost;
    Widget _tile(String name, double value) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              name,
              style: Theme.of(context).textTheme.caption,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 8,
            ),
            PriceTag(price: value),
          ],
        ),
      );
    }

    return Section(
      title: 'Доход',
      content: Row(
        children: [
          Expanded(
            child: _tile('Выручка', deal.fullCost),
          ),
          Container(
            height: 45,
            width: 1,
            color: Colors.black38,
          ),
          Expanded(
            child: _tile('Расходы', deal.fullDirectCost),
          ),
          Expanded(
            child: Material(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                color: margin.isNegative ? Colors.red[100] : Colors.green[100],
                child: _tile('Доход', margin)),
          ),
        ],
      ),
    );
  }
}
