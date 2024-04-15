import 'package:firebase_auth/firebase_auth.dart';

class UserData{
  String? id;
  final String nome;
  final String cognome;
  final String email;
  final String password;

  UserData({
    this.id,
    required this.nome,
    required this.cognome,
    required this.email,
    required this.password
  });
}