import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTag extends StatelessWidget {
  final DateTime? date;

  const DateTag({Key? key, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      date != null ? DateFormat.yMMMd().format(date!) : 'дата не указана',
      style: Theme.of(context).textTheme.caption,
    );
  }
}
