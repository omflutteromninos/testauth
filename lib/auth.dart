import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class Auth{
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  User? get currentUser => _firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> SignInUser(
      String UserName,
      String Password
      )async {
    await _firebaseAuth.signInWithEmailAndPassword(email: UserName, password: Password);

  }

  Future<void> logInUser(
      String UserEmail,
      String UserPassword
      )async{
    await _firebaseAuth.createUserWithEmailAndPassword(email: UserEmail, password: UserPassword);

  }

  Future<void> signOut() async {
   await _firebaseAuth.signOut();
  }

}








