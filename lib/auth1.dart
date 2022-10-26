import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Authenti{

  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? get currentuser => _firebaseAuth.currentUser;

  Stream<User?> get authstate => _firebaseAuth.authStateChanges();

  Future<void> SignUp(String email, String password) async {
    await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);

  }


  Future<void> LogIn(String email, String password) async{
    await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
  }

  Future<void> SignOut() async{
    _firebaseAuth.signOut();
  }

}