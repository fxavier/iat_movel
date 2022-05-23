import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:iat_movel/models/models.dart';

class Area extends Equatable {
  final int id;
  final String nome;
  final Sector sector;

  const Area({
    required this.id,
    required this.nome,
    required this.sector,
  });

  @override
  List<Object?> get props => [id, nome, sector];

  @override
  String toString() => 'Area(id: $id, nome: $nome, sector: $sector)';

  Area copyWith({
    int? id,
    String? nome,
    Sector? sector,
  }) {
    return Area(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      sector: sector ?? this.sector,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'nome': nome});
    result.addAll({'sector': sector.toMap()});

    return result;
  }

  factory Area.fromMap(Map<String, dynamic> map) {
    return Area(
      id: map['id']?.toInt() ?? 0,
      nome: map['nome'] ?? '',
      sector: Sector.fromMap(map['sector']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Area.fromJson(String source) => Area.fromMap(json.decode(source));
}
