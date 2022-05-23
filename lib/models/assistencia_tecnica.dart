import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:iat_movel/models/models.dart';
import 'package:iat_movel/models/user.dart';

class Assistencia extends Equatable {
  final int id;
  final UnidadeSanitaria unidadeSanitaria;
  final Indicador indicador;
  final String nomeResponsavel;
  final String nomeProvedor;
  final String problemasIdentificados;
  final String tipoProblema;
  final String actividadesResolverProblema;
  final String nomePessoaResponsavelResolver;
  final String emailPessoaResponsavelResolver;
  final DateTime prazo;
  final String nomeBeneficiarioAt;
  final User feitoPor;
  final DateTime feitoEm;
  final String comentarios;

  const Assistencia({
    required this.id,
    required this.unidadeSanitaria,
    required this.indicador,
    required this.nomeResponsavel,
    required this.nomeProvedor,
    required this.problemasIdentificados,
    required this.tipoProblema,
    required this.actividadesResolverProblema,
    required this.nomePessoaResponsavelResolver,
    required this.emailPessoaResponsavelResolver,
    required this.prazo,
    required this.nomeBeneficiarioAt,
    required this.feitoPor,
    required this.feitoEm,
    required this.comentarios,
  });

  @override
  List<Object?> get props => [
        id,
        unidadeSanitaria,
        indicador,
        nomeResponsavel,
        tipoProblema,
        nomeProvedor,
        problemasIdentificados,
        actividadesResolverProblema,
        nomePessoaResponsavelResolver,
        emailPessoaResponsavelResolver,
        prazo,
        nomeBeneficiarioAt,
        feitoPor,
        feitoEm,
        comentarios,
      ];

  Assistencia copyWith({
    int? id,
    UnidadeSanitaria? unidadeSanitaria,
    Indicador? indicador,
    String? nomeResponsavel,
    String? nomeProvedor,
    String? problemasIdentificados,
    String? tipoProblema,
    String? actividadesResolverProblema,
    String? nomePessoaResponsavelResolver,
    String? emailPessoaResponsavelResolver,
    DateTime? prazo,
    String? nomeBeneficiarioAt,
    User? feitoPor,
    DateTime? feitoEm,
    String? comentarios,
  }) {
    return Assistencia(
      id: id ?? this.id,
      unidadeSanitaria: unidadeSanitaria ?? this.unidadeSanitaria,
      indicador: indicador ?? this.indicador,
      nomeResponsavel: nomeResponsavel ?? this.nomeResponsavel,
      nomeProvedor: nomeProvedor ?? this.nomeProvedor,
      problemasIdentificados:
          problemasIdentificados ?? this.problemasIdentificados,
      tipoProblema: tipoProblema ?? this.tipoProblema,
      actividadesResolverProblema:
          actividadesResolverProblema ?? this.actividadesResolverProblema,
      nomePessoaResponsavelResolver:
          nomePessoaResponsavelResolver ?? this.nomePessoaResponsavelResolver,
      emailPessoaResponsavelResolver:
          emailPessoaResponsavelResolver ?? this.emailPessoaResponsavelResolver,
      prazo: prazo ?? this.prazo,
      nomeBeneficiarioAt: nomeBeneficiarioAt ?? this.nomeBeneficiarioAt,
      feitoPor: feitoPor ?? this.feitoPor,
      feitoEm: feitoEm ?? this.feitoEm,
      comentarios: comentarios ?? this.comentarios,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'unidadeSanitaria': unidadeSanitaria.toMap()});
    result.addAll({'indicador': indicador.toMap()});
    result.addAll({'nomeResponsavel': nomeResponsavel});
    result.addAll({'nomeProvedor': nomeProvedor});
    result.addAll({'problemasIdentificados': problemasIdentificados});
    result.addAll({'tipoProblema': tipoProblema});
    result.addAll({'actividadesResolverProblema': actividadesResolverProblema});
    result.addAll(
        {'nomePessoaResponsavelResolver': nomePessoaResponsavelResolver});
    result.addAll(
        {'emailPessoaResponsavelResolver': emailPessoaResponsavelResolver});
    result.addAll({'prazo': prazo.millisecondsSinceEpoch});
    result.addAll({'nomeBeneficiarioAt': nomeBeneficiarioAt});
    result.addAll({'feitoPor': feitoPor.toMap()});
    result.addAll({'feitoEm': feitoEm.millisecondsSinceEpoch});
    result.addAll({'comentarios': comentarios});

    return result;
  }

  factory Assistencia.fromMap(Map<String, dynamic> map) {
    return Assistencia(
      id: map['id']?.toInt() ?? 0,
      unidadeSanitaria: UnidadeSanitaria.fromMap(map['unidadeSanitaria']),
      indicador: Indicador.fromMap(map['indicador']),
      nomeResponsavel: map['nomeResponsavel'] ?? '',
      nomeProvedor: map['nomeProvedor'] ?? '',
      problemasIdentificados: map['problemasIdentificados'] ?? '',
      tipoProblema: map['tipoProblema'] ?? '',
      actividadesResolverProblema: map['actividadesResolverProblema'] ?? '',
      nomePessoaResponsavelResolver: map['nomePessoaResponsavelResolver'] ?? '',
      emailPessoaResponsavelResolver:
          map['emailPessoaResponsavelResolver'] ?? '',
      prazo: DateTime.fromMillisecondsSinceEpoch(map['prazo']),
      nomeBeneficiarioAt: map['nomeBeneficiarioAt'] ?? '',
      feitoPor: User.fromMap(map['feitoPor']),
      feitoEm: DateTime.fromMillisecondsSinceEpoch(map['feitoEm']),
      comentarios: map['comentarios'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Assistencia.fromJson(String source) =>
      Assistencia.fromMap(json.decode(source));
}
