/*import 'package:cloud_firestore/cloud_firestore.dart';

// Create a reference to the Firestore collection where you want to store the data.
CollectionReference users = FirebaseFirestore.instance.collection('users');

// Define the data you want to store.
Map<String, dynamic> userData = {
  'name': 'John Doe',
  'username': 'johndoe123',
  'net coins': 1000,
  'gross coins': 2000,
};

// Add the data to Firestore as a new document with an automatically generated ID.
await users.add(userData);

// If you have a specific document ID you want to use, you can set it explicitly:
// await users.doc('specific_document_id').set(userData);

*/