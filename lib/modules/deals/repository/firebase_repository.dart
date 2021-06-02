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
    final result = snap.map((e) {
      return Deal.fromJson(_fbJson(e));
    }).toList()
      ..sort((a, b) => (b.createdAt ?? DateTime(1900))
          .compareTo(a.createdAt ?? DateTime(1900)));
    return result;
  }

  Future<Deal> add(Deal deal) async {
    final docRef =
        await ref.add(deal.copyWith(createdAt: DateTime.now()).toJson());
    final docSnap = await docRef.get();
    return Deal.fromJson(_fbJson(docSnap));
  }

  Future<void> edit(Deal deal) async {
    final docRef = ref.doc(deal.id);
    return docRef.set(deal.toJson());
  }
}
