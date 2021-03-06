part of '../tdapi.dart';

class Hashtags implements TdObject {
  List<String> hashtags;
  dynamic extra;

  /// Contains a list of hashtags.
  ///[hashtags] A list of hashtags
  Hashtags({this.hashtags});

  /// Parse from a json
  Hashtags.fromJson(Map<String, dynamic> json) {
    this.hashtags = List<String>.from(json['hashtags'] ?? []);
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "hashtags": this.hashtags};
  }

  static const String CONSTRUCTOR = "hashtags";

  @override
  String getConstructor() => CONSTRUCTOR;
}
