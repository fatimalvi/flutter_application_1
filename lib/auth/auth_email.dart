import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class EmailAuthService {
  Future<String?> LoginUserWithEmailAndPassword(String email, String password, 
                                                ) async {

    final FirebaseAuth auth = FirebaseAuth.instance;

    if (email == ""){
      return "Please enter an email.";
    }

    if (password == ""){
      return "Password cannot be empty.";
    }


    try {

          UserCredential userCredential = await auth.signInWithEmailAndPassword(
            email: email,
            password: password,
          );
              //User user = UserCredential.user'         
          
      return "Yay";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        return 'The email address you have entered has not been registered.';
      }
      else if (e.code == 'wrong-password') {
        return 'Your password is incorrect. Please try again.';
      } 
      else{
        return 'An error occurred ??';
      }
    } catch (e) {
      return 'Errorrrr';
    }
  }
}
