import 'package:flutter/material.dart';

class PriceTag extends StatelessWidget {
  final double price;
  final double fontSize;

  const PriceTag({Key? key, required this.price, this.fontSize = 15})
      : super(key: key);

  String _divide(String string) {
    String r = string;
    if (r.length <= 3) {
      return r;
    } else if (r.length <= 6) {
      return r.substring(0, r.length - 3) + ' ' + r.substring(r.length - 3);
    } else {
      return r.substring(0, r.length - 6) +
          ' ' +
          r.substring(r.length - 6, r.length - 3) +
          ' ' +
          r.substring(
            r.length - 3,
          );
    }
  }

  String _addTrailingZero(String string) {
    if (string.length == 2) {
      return string;
    } else {
      return string + '0';
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<String> splitted = price.toString().split('.');
    final bool isInt = splitted[1] == '0';
    return Row(
      textBaseline: TextBaseline.alphabetic,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          _divide(splitted[0]),
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
        ),
        if (!isInt)
          Text(
            '.' + _addTrailingZero(splitted[1]),
            style: TextStyle(fontSize: fontSize / 3 * 2, color: Colors.black38),
          ),
        Text(
          ' ₽',
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
