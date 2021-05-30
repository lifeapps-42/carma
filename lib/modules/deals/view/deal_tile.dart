import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/deal.dart';
import '../providers/deals_provider.dart';

class DealTile extends ConsumerWidget {
  const DealTile({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final Deal deal = watch(currentDealProvider);
    return Container(
      color: Colors.yellow[100],
      child: Column(
        children: [
          Text(deal.description),
          Text(deal.fullCost.toString()),
          Text(deal.vehicle?? 'авто не указан'),
        ],
      ),
    );
  }
}