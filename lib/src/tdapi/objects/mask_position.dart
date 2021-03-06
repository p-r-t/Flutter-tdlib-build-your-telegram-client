part of '../tdapi.dart';

class MaskPosition implements TdObject {
  var point;
  double xShift;
  double yShift;
  double scale;

  /// Position on a photo where a mask should be placed.
  ///[point] Part of the face, relative to which the mask should be placed.
  /// [xShift] Shift by X-axis measured in widths of the mask scaled to the face size, from left to right. (For example, -1.0 will place the mask just to the left of the default mask position).
  /// [yShift] Shift by Y-axis measured in heights of the mask scaled to the face size, from top to bottom. (For example, 1.0 will place the mask just below the default mask position).
  /// [scale] Mask scaling coefficient. (For example, 2.0 means a doubled size)
  MaskPosition({this.point, this.xShift, this.yShift, this.scale});

  /// Parse from a json
  MaskPosition.fromJson(Map<String, dynamic> json) {
    this.point = MaskPoint.fromJson(json['point'] ?? <String, dynamic>{});
    this.xShift = json['x_shift'];
    this.yShift = json['y_shift'];
    this.scale = json['scale'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "point": this.point.toJson(),
      "x_shift": this.xShift,
      "y_shift": this.yShift,
      "scale": this.scale
    };
  }

  static const String CONSTRUCTOR = "maskPosition";

  @override
  String getConstructor() => CONSTRUCTOR;
}
