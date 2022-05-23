import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:iat_movel/models/models.dart';

class UnidadeSanitaria extends Equatable {
  final int id;
  final String nome;
  final Distrito distrito;

  const UnidadeSanitaria({
    required this.id,
    required this.nome,
    required this.distrito,
  });

  @override
  List<Object?> get props => [id, nome, distrito];

  @override
  String toString() =>
      'UnidadeSanitaria(id: $id, nome: $nome, distrito: $distrito)';

  UnidadeSanitaria copyWith({
    int? id,
    String? nome,
    Distrito? distrito,
  }) {
    return UnidadeSanitaria(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      distrito: distrito ?? this.distrito,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'nome': nome});
    result.addAll({'distrito': distrito.toMap()});

    return result;
  }

  factory UnidadeSanitaria.fromMap(Map<String, dynamic> map) {
    return UnidadeSanitaria(
      id: map['id']?.toInt() ?? 0,
      nome: map['nome'] ?? '',
      distrito: Distrito.fromMap(map['distrito']),
    );
  }

  String toJson() => json.encode(toMap());

  factory UnidadeSanitaria.fromJson(String source) =>
      UnidadeSanitaria.fromMap(json.decode(source));
}
