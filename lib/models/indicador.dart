import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:iat_movel/models/models.dart';

class Indicador extends Equatable {
  final int id;
  final String nome;
  final Area area;

  const Indicador({
    required this.id,
    required this.nome,
    required this.area,
  });

  @override
  List<Object?> get props => [id, nome, area];

  @override
  String toString() => 'Indicador(id: $id, nome: $nome, area: $area)';

  Indicador copyWith({
    int? id,
    String? nome,
    Area? area,
  }) {
    return Indicador(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      area: area ?? this.area,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'nome': nome});
    result.addAll({'area': area.toMap()});

    return result;
  }

  factory Indicador.fromMap(Map<String, dynamic> map) {
    return Indicador(
      id: map['id']?.toInt() ?? 0,
      nome: map['nome'] ?? '',
      area: Area.fromMap(map['area']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Indicador.fromJson(String source) =>
      Indicador.fromMap(json.decode(source));
}
