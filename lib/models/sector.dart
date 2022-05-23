import 'dart:convert';

import 'package:equatable/equatable.dart';

class Sector extends Equatable {
  final int id;
  final String nome;

  const Sector({
    required this.id,
    required this.nome,
  });

  @override
  List<Object?> get props => [id, nome];

  @override
  String toString() => 'Sector(id: $id, nome: $nome)';

  Sector copyWith({
    int? id,
    String? nome,
  }) {
    return Sector(
      id: id ?? this.id,
      nome: nome ?? this.nome,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'nome': nome});

    return result;
  }

  factory Sector.fromMap(Map<String, dynamic> map) {
    return Sector(
      id: map['id']?.toInt() ?? 0,
      nome: map['nome'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Sector.fromJson(String source) => Sector.fromMap(json.decode(source));
}
