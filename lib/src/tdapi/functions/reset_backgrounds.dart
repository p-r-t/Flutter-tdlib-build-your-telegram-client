part of '../tdapi.dart';

class ResetBackgrounds extends TdFunction {
  dynamic extra;

  /// Resets list of installed backgrounds to its default value.
  ///
  ResetBackgrounds();

  /// Parse from a json
  ResetBackgrounds.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {"@type": CONSTRUCTOR, "@extra": this.extra};
  }

  static const String CONSTRUCTOR = "resetBackgrounds";

  @override
  String getConstructor() => CONSTRUCTOR;
}
