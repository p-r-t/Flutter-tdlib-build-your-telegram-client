part of '../tdapi.dart';

class Document implements TdObject {
  String fileName;
  String mimeType;
  Minithumbnail minithumbnail;
  PhotoSize thumbnail;
  File document;

  /// Describes a document of any type.
  ///[fileName] Original name of the file; as defined by the sender .
  /// [mimeType] MIME type of the file; as defined by the sender.
  /// [minithumbnail] Document minithumbnail; may be null .
  /// [thumbnail] Document thumbnail in JPEG or PNG format (PNG will be used only for background patterns); as defined by the sender; may be null .
  /// [document] File containing the document
  Document(
      {this.fileName,
      this.mimeType,
      this.minithumbnail,
      this.thumbnail,
      this.document});

  /// Parse from a json
  Document.fromJson(Map<String, dynamic> json) {
    this.fileName = json['file_name'];
    this.mimeType = json['mime_type'];
    this.minithumbnail =
        Minithumbnail.fromJson(json['minithumbnail'] ?? <String, dynamic>{});
    this.thumbnail =
        PhotoSize.fromJson(json['thumbnail'] ?? <String, dynamic>{});
    this.document = File.fromJson(json['document'] ?? <String, dynamic>{});
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file_name": this.fileName,
      "mime_type": this.mimeType,
      "minithumbnail": this.minithumbnail.toJson(),
      "thumbnail": this.thumbnail.toJson(),
      "document": this.document.toJson()
    };
  }

  static const String CONSTRUCTOR = "document";

  @override
  String getConstructor() => CONSTRUCTOR;
}
