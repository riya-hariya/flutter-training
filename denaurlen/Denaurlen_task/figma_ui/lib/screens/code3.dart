/*
final firestore = FirebaseFirestore.instance;
final valuationsCollection = firestore.collection('valuations');

Future<void> updateValuation(String userId) async {
  DocumentReference userDoc = valuationsCollection.doc(userId);

  // Update NET COINS (assuming you have a field named 'netCoins' in the document).
  await userDoc.update({'netCoins': FieldValue.increment(100)});

  // Recalculate GROSS COINS (sum of all NET COINS).
  QuerySnapshot querySnapshot = await valuationsCollection.get();
  int grossCoins = querySnapshot.docs.fold(0, (int total, doc) {
    return total + (doc.data()['netCoins'] as int);
  });

  // Update GROSS COINS (assuming you have a field named 'grossCoins' in the document).
  await userDoc.update({'grossCoins': grossCoins});
}
*/