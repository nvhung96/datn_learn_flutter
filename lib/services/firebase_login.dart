import 'package:firebase_auth/firebase_auth.dart';

class AuthLogin {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String> signIn({String email, String password}) async {
    AuthResult result = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    FirebaseUser user = result.user;
    return user.uid;
  }

  Future<String> signUp({String email, String password}) async {
    AuthResult result = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    FirebaseUser user = result.user;
    return user.uid;
  }

  Future<String> getCurrentUser() async {
    FirebaseUser user = await _auth.currentUser();
    return user.uid;
  }

  Future<void> signOut() async {
    return await _auth.signOut();
  }
}
