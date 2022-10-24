

import 'package:json_annotation/json_annotation.dart';


@JsonSerializable(explicitToJson: false)

class Qari {
  int? id;
  String? name;
  String? arabicName;
  String? relativePath;
  String? fileFormats;
  int? sectionId;
  bool? home;
  Null? description;
  String? torrentFilename;
  String? torrentInfoHash;
  int? torrentSeeders;
  int? torrentLeechers;

  Qari(
      {this.id,
        this.name,
        this.arabicName,
        this.relativePath,
        this.fileFormats,
        this.sectionId,
        this.home,
        this.description,
        this.torrentFilename,
        this.torrentInfoHash,
        this.torrentSeeders,
        this.torrentLeechers});

 // factory Qari.fromJson(Map<String, dynamic> json) => _$QariFromJson(json);



  Qari.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    arabicName = json['arabic_name'];
    relativePath = json['relative_path'];
    fileFormats = json['file_formats'];
    sectionId = json['section_id'];
    home = json['home'];
    description = json['description'];
    torrentFilename = json['torrent_filename'];
    torrentInfoHash = json['torrent_info_hash'];
    torrentSeeders = json['torrent_seeders'];
    torrentLeechers = json['torrent_leechers'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['arabic_name'] = this.arabicName;
    data['relative_path'] = this.relativePath;
    data['file_formats'] = this.fileFormats;
    data['section_id'] = this.sectionId;
    data['home'] = this.home;
    data['description'] = this.description;
    data['torrent_filename'] = this.torrentFilename;
    data['torrent_info_hash'] = this.torrentInfoHash;
    data['torrent_seeders'] = this.torrentSeeders;
    data['torrent_leechers'] = this.torrentLeechers;
    return data;
  }


}