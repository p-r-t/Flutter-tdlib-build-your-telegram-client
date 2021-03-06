part of '../tdapi.dart';

class StorageStatisticsFast implements TdObject {
  int filesSize;
  int fileCount;
  int databaseSize;
  int languagePackDatabaseSize;
  int logSize;
  dynamic extra;

  /// Contains approximate storage usage statistics, excluding files of unknown file type.
  ///[filesSize] Approximate total size of files .
  /// [fileCount] Approximate number of files.
  /// [databaseSize] Size of the database .
  /// [languagePackDatabaseSize] Size of the language pack database .
  /// [logSize] Size of the TDLib internal log
  StorageStatisticsFast(
      {this.filesSize,
      this.fileCount,
      this.databaseSize,
      this.languagePackDatabaseSize,
      this.logSize});

  /// Parse from a json
  StorageStatisticsFast.fromJson(Map<String, dynamic> json) {
    this.filesSize = json['files_size'];
    this.fileCount = json['file_count'];
    this.databaseSize = json['database_size'];
    this.languagePackDatabaseSize = json['language_pack_database_size'];
    this.logSize = json['log_size'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "files_size": this.filesSize,
      "file_count": this.fileCount,
      "database_size": this.databaseSize,
      "language_pack_database_size": this.languagePackDatabaseSize,
      "log_size": this.logSize
    };
  }

  static const String CONSTRUCTOR = "storageStatisticsFast";

  @override
  String getConstructor() => CONSTRUCTOR;
}
