import 'dart:convert';

import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String nome;
  final String email;
  final String password;
  const User({
    required this.id,
    required this.nome,
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [id, nome, email, password];

  @override
  String toString() {
    return 'User(id: $id, nome: $nome, email: $email, password: $password)';
  }

  User copyWith({
    int? id,
    String? nome,
    String? email,
    String? password,
  }) {
    return User(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'nome': nome});
    result.addAll({'email': email});
    result.addAll({'password': password});

    return result;
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id']?.toInt() ?? 0,
      nome: map['nome'] ?? '',
      email: map['email'] ?? '',
      password: map['password'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
