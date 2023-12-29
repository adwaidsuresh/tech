import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tec/authnetication/google_auth.dart';
// import 'package:tech2/authentication/google_signin.dart';

final authServiceProvider = Provider<Authentication>((ref) {
  return Authentication();
});

final authStateChangeProvider = StreamProvider<User ?>((ref)  {
  return ref.read(authServiceProvider).authStatechange();
  
});