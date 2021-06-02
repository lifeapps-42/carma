import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/deal.dart';
import '../providers/deals_provider.dart';
import 'deal_edit_screen.dart';
import 'status_tag.dart';
import '../../../common/widgets/date_tag.dart';
import '../../../common/widgets/price_tag.dart';

class DealTile extends ConsumerWidget {
  const DealTile({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final Deal deal = watch(currentDealProvider);
    return Card(
      color: Colors.white,
      child: InkWell(
        onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => DealEditScreen(deal))),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  deal.vehicle ?? 'авто не указан',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(deal.works.fold<String>(
                    '',
                    (previousValue, work) =>
                        previousValue + '• ${work.name} ')),
                Divider(),
                Row(children: [
                  StatusTag(deal: deal),
                  SizedBox(width: 10,),
                  DateTag(date: deal.createdAt,),
                  Spacer(),
                  PriceTag(
                    price: deal.fullCost,
                    fontSize: 18,
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
