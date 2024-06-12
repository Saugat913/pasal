import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Auth {
  final FirebaseAuth _firebaseAuth =FirebaseAuth.instance;
  String? errorMessage;
  User? get currentUser=>_firebaseAuth.currentUser;

  Future<User?> signInWithEmailAndPassword({required String email,required String password})async{
    User? _user;
    try{
        final userCredential=    await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
       _user=userCredential.user;
    }on FirebaseAuthException catch(e){
      errorMessage=e.toString();
      
      //print('Error le:${"[firebase_auth/unknown]".length}');
      print(errorMessage);
      errorMessage=errorMessage!.replaceRange(errorMessage!.indexOf('['), errorMessage!.indexOf(']')+1, "");
    }
    return _user;
  } 

  Future<void> createUserWithEmailAndPassword({required String email,required String password})async{
 
   try{
   var credintial=await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
   var collId=FirebaseFirestore.instance.collection("users");
   var UUId=credintial.user!.uid;
   collId.add({"$UUId":"test"});
   }on FirebaseAuthException catch(e){
    print(e.toString());
   }

  }

  Future<void> signOut()async{
    await _firebaseAuth.signOut();
  }
}
