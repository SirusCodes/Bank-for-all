import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/transaction/transaction.dart' as trans;
import '../utils/setup_locator.dart';
import 'shared_prefs.dart';

class TransactionService {
  final Firestore _db = Firestore.instance;
  final SharedPrefs user = locator<SharedPrefs>();
  CollectionReference ref;

  TransactionService() {
    ref = _db
        .collection("users")
        .document(user.authID)
        .collection("transactions");
  }

  Stream<QuerySnapshot> getAllTransactions() {
    return ref.snapshots();
  }

  Future<DocumentReference> addTransaction(trans.Transaction tran) {
    return ref.add(tran.toJson());
  }
}
