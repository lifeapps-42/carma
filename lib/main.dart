import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'modules/deals/view/deals_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Future<FirebaseApp> _firebaseInit = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
          child: FutureBuilder(
          future: _firebaseInit,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return MaterialApp(
                title: 'carma',
                theme: ThemeData(
                
                  cardTheme: CardTheme(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    shadowColor: Colors.blueGrey[50],
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    elevation: 0,
                  ),
                  scaffoldBackgroundColor: Colors.blueGrey[50],
                  primarySwatch: Colors.blueGrey,
                ),
                home: DealsScreen(),
              );
            }
            return CircularProgressIndicator();
          }),
    );
  }
}
