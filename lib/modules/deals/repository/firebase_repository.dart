import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/deal.dart';

class DealsFirebaseRepository {
  final ref = FirebaseFirestore.instance.collection('deals');

  Map<String, dynamic>
      _fbJson<T extends DocumentSnapshot<Map<String, dynamic>>>(T snapShop) {
    return snapShop.data()!..addAll({'id': snapShop.id});
  }

  Future<List<Deal>> fetch() async {
    final querySnap = await ref.get();
    final snap = querySnap.docs;
    final result = snap.map((e) => Deal.fromJson(_fbJson(e))).toList();
    return result;
  }

  Future<Deal> add(Deal deal) async {
    final docRef = await ref.add(deal.toJson());
    final docSnap = await docRef.get();
    return Deal.fromJson(_fbJson(docSnap));
  }
}
