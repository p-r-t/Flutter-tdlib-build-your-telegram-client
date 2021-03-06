part of '../tdapi.dart';

class Emojis implements TdObject {
  List<String> emojis;
  dynamic extra;

  /// Represents a list of emoji.
  ///[emojis] List of emojis
  Emojis({this.emojis});

  /// Parse from a json
  Emojis.fromJson(Map<String, dynamic> json) {
    this.emojis = List<String>.from(json['emojis'] ?? []);
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "emojis": this.emojis};
  }

  static const String CONSTRUCTOR = "emojis";

  @override
  String getConstructor() => CONSTRUCTOR;
}
