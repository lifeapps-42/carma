import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/money_box.dart';

class MoneyFirebaseRepository {
  final ref = FirebaseFirestore.instance.collection('moneyBoxes');

  Map<String, dynamic>
      _fbJson<T extends DocumentSnapshot<Map<String, dynamic>>>(T snapShop) {
    return snapShop.data()!..addAll({'id': snapShop.id});
  }

  Future<List<MoneyBox>> fetchMoneyBoxes() async {
    final querySnap = await ref.get();
    final snap = querySnap.docs;
    final result = snap.map((e) {
      return MoneyBox.fromJson(_fbJson(e));
    }).toList();
      // ..sort((a, b) => (b.createdAt ?? DateTime(1900))
      //     .compareTo(a.createdAt ?? DateTime(1900)));
    return result;
  }

  Future<MoneyBox> addMoneyBox(MoneyBox moneyBox) async {
    final docRef =
        await ref.add(moneyBox.toJson());
    final docSnap = await docRef.get();
    return MoneyBox.fromJson(_fbJson(docSnap));
  }

  // Future<void> edit(Deal deal) async {
  //   final docRef = ref.doc(deal.id);
  //   return docRef.set(deal.toJson());
  // }
}
