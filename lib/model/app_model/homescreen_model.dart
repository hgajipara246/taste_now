// To parse this JSON data, do
//
//     final tasteNowModelNewlyOpened = tasteNowModelNewlyOpenedFromJson(jsonString);

import 'dart:convert';

TasteNowModelNewlyOpened tasteNowModelNewlyOpenedFromJson(String str) => TasteNowModelNewlyOpened.fromJson(json.decode(str));

String tasteNowModelNewlyOpenedToJson(TasteNowModelNewlyOpened data) => json.encode(data.toJson());

class TasteNowModelNewlyOpened {
  List<NewlyOpened>? newlyOpened;

  TasteNowModelNewlyOpened({
    this.newlyOpened,
  });

  factory TasteNowModelNewlyOpened.fromJson(Map<String, dynamic> json) => TasteNowModelNewlyOpened(
        newlyOpened: json["newlyOpened"] == null ? [] : List<NewlyOpened>.from(json["newlyOpened"]!.map((x) => NewlyOpened.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "newlyOpened": newlyOpened == null ? [] : List<dynamic>.from(newlyOpened!.map((x) => x.toJson())),
      };
}

class NewlyOpened {
  String? image;
  String? title;
  String? time;

  NewlyOpened({
    this.image,
    this.title,
    this.time,
  });

  factory NewlyOpened.fromJson(Map<String, dynamic> json) => NewlyOpened(
        image: json["image"],
        title: json["title"],
        time: json["time"],
      );

  Map<String, dynamic> toJson() => {
        "image": image,
        "title": title,
        "time": time,
      };
}
