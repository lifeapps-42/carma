import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/money_box_provider.dart';
import '../../../common/widgets/price_tag.dart';

class MoneyBoxTile extends ConsumerWidget {
  const MoneyBoxTile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final moneyBox = watch(currentMoneyBoxProvider);
    return Card(
      child: Column(
        children: [
          Column(
            children: [
              Text(moneyBox.name),
              PriceTag(price: moneyBox.balance),
            ],
          ),
        ],
      ),
    );
  }
}