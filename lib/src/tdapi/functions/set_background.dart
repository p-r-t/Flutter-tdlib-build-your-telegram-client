part of '../tdapi.dart';

class SetBackground extends TdFunction {
  var background;
  var type;
  bool forDarkTheme;
  dynamic extra;

  /// Changes the background selected by the user; adds background to the list of installed backgrounds.
  ///[background] The input background to use, null for solid backgrounds.
  /// [type] Background type; null for default background. The method will return error 404 if type is null.
  /// [forDarkTheme] True, if the background is chosen for dark theme
  SetBackground({this.background, this.type, this.forDarkTheme});

  /// Parse from a json
  SetBackground.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "background": this.background.toJson(),
      "type": this.type.toJson(),
      "for_dark_theme": this.forDarkTheme,
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "setBackground";

  @override
  String getConstructor() => CONSTRUCTOR;
}
