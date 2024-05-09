import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  // get collection of notes
  final CollectionReference notes = FirebaseFirestore.instance.collection('notes');

  // Create -> membuat note baru
  Future<void> addNote(String note){
    return notes.add({
      'note' : note,
      'timestamp' : Timestamp.now(),
    });
  }

  // Read -> get note from database

  // Update - >edit atau memperbarui note yg sudah ada

  // Delete -> menghapus note
}