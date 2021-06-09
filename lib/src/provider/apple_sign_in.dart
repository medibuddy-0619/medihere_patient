import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medihere_patient/src/service/storage_util.dart';
import 'package:apple_sign_in/apple_sign_in.dart';

class AppleSignInProvider extends ChangeNotifier {
  final StorageUtil _storageUtil = StorageUtil();

  Future appleLogin() async {
    final AuthorizationResult result = await AppleSignIn.performRequests([
      AppleIdRequest(requestedScopes: [Scope.email, Scope.fullName])
    ]);

    switch (result.status) {
      case AuthorizationStatus.authorized:
        final AppleIdCredential _auth = result.credential;
        final OAuthProvider oAuthProvider = new OAuthProvider("apple.com");
        final AuthCredential credential = oAuthProvider.credential(
          idToken: String.fromCharCodes(_auth.identityToken),
          accessToken: String.fromCharCodes(_auth.authorizationCode),
        );

        // _storageUtil.setAccessToken(credential.token);
        await FirebaseAuth.instance.signInWithCredential(credential);
        break;
      case AuthorizationStatus.error:
        print("Error happened in Apple sign in ${result.error}");
        break;
      case AuthorizationStatus.cancelled:
        print("Cancelled");
        break;
    }
    notifyListeners();
  }
}
