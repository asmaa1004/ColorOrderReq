import 'dart:convert';

Cloths ClothsFromJson(String str) => Cloths.fromJson(json.decode(str));

String ClothsToJson(Cloths data) => json.encode(data.toJson());

class Cloths {
  Cloths({
    required this.status,
    required this.data,
  });

  String status;
  List<Data> data;

  factory Cloths.fromJson(Map<String, dynamic> json) => Cloths(
    status: json["status"],
    data: List<Data>.from(json["data"].map((x) => Data.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Data {
  Data({
    required this.cloth,
  });

  String cloth;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    cloth: json["Cloth"],
  );

  Map<String, dynamic> toJson() => {
    "Cloth": cloth,
  };
}
