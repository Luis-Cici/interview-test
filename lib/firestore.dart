import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference dataInfo =
      FirebaseFirestore.instance.collection('dataInfo');

  Future<void> addData(String name) {
    return dataInfo.add({
      'name': name,
    });
  }
}
