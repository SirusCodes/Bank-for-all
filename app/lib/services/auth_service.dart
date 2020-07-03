import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../utils/setup_locator.dart';
import 'shared_prefs.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  void _userFromFirebase(FirebaseUser user) {
    locator<SharedPrefs>().setUser(
      user.displayName,
      user.email,
      user.uid,
    );
  }

  Future<bool> signInWithGoogle() async {
    GoogleSignInAccount googleSignInAccount;

    googleSignInAccount = await _googleSignIn
        .signIn()
        .catchError((e) => debugPrint(e.toString()));

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuth =
          await googleSignInAccount.authentication;
      if (googleSignInAuth.accessToken != null &&
          googleSignInAuth.idToken != null) {
        final AuthCredential credential = GoogleAuthProvider.getCredential(
          accessToken: googleSignInAuth.accessToken,
          idToken: googleSignInAuth.idToken,
        );
        final AuthResult authResult =
            await _auth.signInWithCredential(credential);
        final FirebaseUser user = authResult.user;
        assert(!user.isAnonymous);
        assert(await user.getIdToken() != null);

        final FirebaseUser currentUser = await _auth.currentUser();
        assert(user.uid == currentUser.uid);

        _userFromFirebase(user);
        return true;
      }
    }

    return false;
  }

  Future<void> signOutGoogle() async {
    await _auth.signOut();
  }
}
