import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/deal.dart';

class DealsFirebaseRepository {

  final ref = FirebaseFirestore.instance.collection('deals');
  
  Future<List<Deal>> fetch() async {
  final querySnap = await ref.get();
  final snap = querySnap.docs;
  return snap.map((e) => Deal.fromJson(e.data())).toList();
  }

  Future<void> add(Deal deal) async {
  await ref.add(deal.toJson());
  }


}
