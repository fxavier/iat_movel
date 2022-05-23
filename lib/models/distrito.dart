import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:iat_movel/models/models.dart';

class Distrito extends Equatable {
  final int id;
  final String nome;
  final Provincia provincia;

  const Distrito({
    required this.id,
    required this.nome,
    required this.provincia,
  });

  @override
  List<Object?> get props => [id, nome, provincia];

  Distrito copyWith({
    int? id,
    String? nome,
    Provincia? provincia,
  }) {
    return Distrito(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      provincia: provincia ?? this.provincia,
    );
  }

  @override
  String toString() => 'Distrito(id: $id, nome: $nome, provincia: $provincia)';

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'nome': nome});
    result.addAll({'provincia': provincia.toMap()});

    return result;
  }

  factory Distrito.fromMap(Map<String, dynamic> map) {
    return Distrito(
      id: map['id']?.toInt() ?? 0,
      nome: map['nome'] ?? '',
      provincia: Provincia.fromMap(map['provincia']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Distrito.fromJson(String source) =>
      Distrito.fromMap(json.decode(source));
}
