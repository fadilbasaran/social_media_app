import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../../core/constants/failure.dart';
import '../../../core/providers/firebase_providers.dart';
import '../../../core/constants/constants.dart';
import '../../../core/constants/firebase_constants.dart';
import '../../../models/user_model.dart';

import '../../../core/constants/type_defs.dart';

final authRepositoryProvider = Provider((ref) => AuthRepository(
    firestore: ref.read(FirebaseProviders.instance.firestoreProvider),
    firebaseAuth: ref.read(FirebaseProviders.instance.authProvider),
    googleSignIn: ref.read(FirebaseProviders.instance.googleSignInProvider)));

class AuthRepository {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  CollectionReference get _users =>
      _firestore.collection(FirebaseConstants.instance.usersCollection);

  AuthRepository(
      {required FirebaseFirestore firestore,
      required FirebaseAuth firebaseAuth,
      required GoogleSignIn googleSignIn})
      : _firebaseAuth = firebaseAuth,
        _firestore = firestore,
        _googleSignIn = googleSignIn;

  FutureEither<UserModel> signWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

      final googleAuth = await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      UserCredential userCredential =
          await _firebaseAuth.signInWithCredential(credential);
      late UserModel userModel;
      if (userCredential.additionalUserInfo!.isNewUser) {
        userModel = UserModel(
            name: userCredential.user!.displayName ?? 'No Name',
            profilPic: userCredential.user!.photoURL ??
                AppConstants.instance.avatarDefault,
            banner: AppConstants.instance.bannerDefault,
            uid: userCredential.user!.uid,
            isAuthenticated: true,
            karma: 0,
            awards: []);

        await _users.doc(userCredential.user!.uid).set(userModel.toMap());
      } else {
        userModel = await getUserData(userCredential.user!.uid).first;
        print(userModel);
      }
      return right(userModel);
    } on FirebaseException catch (e) {
      throw e.message!;
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  Stream<UserModel> getUserData(String uid) {
    return _users.doc(uid).snapshots().map(
        (event) => UserModel.fromMap(event.data() as Map<String, dynamic>));
  }
}
