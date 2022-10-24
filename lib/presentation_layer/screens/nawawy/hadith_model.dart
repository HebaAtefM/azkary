class HadithModel {
  String key;
  String nameHadith;
  String textHadith;
  String explanationHadith;
  String translateNarrator;
  String audioHadith;

  HadithModel({required this.key, required this.nameHadith, required this.textHadith,required this.explanationHadith,
      required this.translateNarrator, required this.audioHadith});

  factory HadithModel.fromJson(Map<String, dynamic> json) {
    return HadithModel(
      key: json["key"],
      nameHadith: json["nameHadith"],
      textHadith: json["textHadith"],
      translateNarrator: json["translateNarrator"],
      audioHadith: json["audioHadith"], explanationHadith:  json["explanationHadith"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "key": this.key,
      "nameHadith": this.nameHadith,
      "textHadith": this.textHadith,
      "translateNarrator": this.translateNarrator,
      "audioHadith": this.audioHadith,
      "explanationHadith":this.explanationHadith
    };
  }
//



}




