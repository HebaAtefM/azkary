import 'package:json_annotation/json_annotation.dart';
part 'quraan_api.g.dart';

@JsonSerializable(explicitToJson: false)

class Quran {
  int? code;
  String? status;
  Data? data;

  Quran({this.code, this.status, this.data});

  factory Quran.fromJson(Map<String, dynamic> json) => _$QuranFromJson(json);
}

@JsonSerializable(explicitToJson: false)
class Data {
  List<Surahs>? surahs;

  Data({this.surahs});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@JsonSerializable(explicitToJson: false)
class Surahs {
  int? number;
  String? name;
  String? englishName;
  String? englishNameTranslation;
  String? revelationType;
  List<Ayahs>? ayahs;

  Surahs(
      {this.number,
        this.name,
        this.englishName,
        this.englishNameTranslation,
        this.revelationType,
        this.ayahs});

  factory Surahs.fromJson(Map<String, dynamic> json) => _$SurahsFromJson(json);
}

@JsonSerializable(explicitToJson: false)
class Ayahs {
  int? number;
  String? audio;
  List<String>? audioSecondary;
  String? text;
  int? numberInSurah;
  int? juz;
  int? manzil;
  int? page;
  int? ruku;
  int? hizbQuarter;
  dynamic sajda;

  Ayahs(
      {this.number,
        this.audio,
        this.audioSecondary,
        this.text,
        this.numberInSurah,
        this.juz,
        this.manzil,
        this.page,
        this.ruku,
        this.hizbQuarter,
        this.sajda});

  factory Ayahs.fromJson(Map<String, dynamic> json) => _$AyahsFromJson(json);
}