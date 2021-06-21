import 'package:flutter/material.dart';

import '../../routes.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            ListTile(
              leading: Icon(
                Icons.shopping_cart_outlined,
              ),
              title: Text('Сделки'),
              onTap: () => Navigator.pushNamed(context, DealsScreen.route),
            ),
            ListTile(
              leading: Icon(
                Icons.money_outlined,
              ),
              title: Text('Кассы'),
              onTap: () => Navigator.pushNamed(context, MoneyBoxesScreen.route),
            ),
          ],
        ),
      ),
    );
  }
}
