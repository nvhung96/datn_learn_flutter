import 'package:google_sign_in/google_sign_in.dart';

class LoginFireBase {
  bool checkLogIn = false;

  final GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: ['email', 'https://www.googleapis.com/auth/contacts.readonly']);

  GoogleSignInAccount account;

  Future sigInGoogle() async {
    await _googleSignIn.signIn();
    getAccount();
    return account;
  }

  Future<GoogleSignInAccount> getAccount() async {
    account = _googleSignIn.currentUser;
    return account;
  }

  Future signOutGoogle() async {
    await _googleSignIn.signOut();
    getAccount();
  }
}