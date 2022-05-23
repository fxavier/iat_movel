import 'dart:convert';

import 'package:equatable/equatable.dart';

class Provincia extends Equatable {
  final int id;
  final int nome;

  const Provincia({
    required this.id,
    required this.nome,
  });

  @override
  List<Object?> get props => [id, nome];

  Provincia copyWith({
    int? id,
    int? nome,
  }) {
    return Provincia(
      id: id ?? this.id,
      nome: nome ?? this.nome,
    );
  }

  @override
  String toString() => 'Provincia(id: $id, nome: $nome)';

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'nome': nome});

    return result;
  }

  factory Provincia.fromMap(Map<String, dynamic> map) {
    return Provincia(
      id: map['id']?.toInt() ?? 0,
      nome: map['nome']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Provincia.fromJson(String source) =>
      Provincia.fromMap(json.decode(source));
}
