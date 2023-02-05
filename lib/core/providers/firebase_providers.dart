import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseProviders {
  static FirebaseProviders? _instance;
  static FirebaseProviders get instance {
    _instance ??= FirebaseProviders._init(); //eğer null ise bunu kullan
    return _instance!;
  }

  FirebaseProviders._init();

  final firestoreProvider = Provider((ref) => FirebaseFirestore.instance);
  final authProvider = Provider((ref) => FirebaseAuth.instance);
  final storageProvider = Provider((ref) => FirebaseStorage.instance);
  final googleSignInProvider = Provider((ref) => GoogleSignIn());
}
