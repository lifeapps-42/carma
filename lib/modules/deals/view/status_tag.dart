import 'package:flutter/material.dart';

import '../models/deal.dart';

class StatusTag extends StatelessWidget {
  final Deal deal;

  const StatusTag({Key? key, required this.deal}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    late String label;
    late Color backgroundColor;
    late Color fontColor;
    switch (deal.status) {
      case DealStatus.inWork:
        label = 'В работе';
        backgroundColor = Colors.blue[200]!;
        fontColor = Colors.blue[800]!;
        break;
      case DealStatus.done:
        label = 'Завершено';
        backgroundColor = Colors.green[200]!;
        fontColor = Colors.green[800]!;
        break;
      case DealStatus.prospect:
        label = 'Переговоры';
        backgroundColor = Colors.purple[200]!;
        fontColor = Colors.purple[800]!;
        break;
      
    }
    return Material(
      shape: StadiumBorder(),
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
        child: Text(label, style: TextStyle(color: fontColor),),
      ),
      
    );
  }
}