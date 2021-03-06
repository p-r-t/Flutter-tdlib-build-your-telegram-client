part of '../tdapi.dart';

class AutoDownloadSettings implements TdObject {
  bool isAutoDownloadEnabled;
  int maxPhotoFileSize;
  int maxVideoFileSize;
  int maxOtherFileSize;
  bool preloadLargeVideos;
  bool preloadNextAudio;
  bool useLessDataForCalls;

  /// Contains auto-download settings.
  ///[isAutoDownloadEnabled] True, if the auto-download is enabled.
  /// [maxPhotoFileSize] Maximum size of a photo file to be auto-downloaded.
  /// [maxVideoFileSize] Maximum size of a video file to be auto-downloaded.
  /// [maxOtherFileSize] Maximum size of other file types to be auto-downloaded.
  /// [preloadLargeVideos] True, if the beginning of videos needs to be preloaded for instant playback.
  /// [preloadNextAudio] True, if the next audio track needs to be preloaded while the user is listening to an audio file.
  /// [useLessDataForCalls] True, if "use less data for calls" option needs to be enabled
  AutoDownloadSettings(
      {this.isAutoDownloadEnabled,
      this.maxPhotoFileSize,
      this.maxVideoFileSize,
      this.maxOtherFileSize,
      this.preloadLargeVideos,
      this.preloadNextAudio,
      this.useLessDataForCalls});

  /// Parse from a json
  AutoDownloadSettings.fromJson(Map<String, dynamic> json) {
    this.isAutoDownloadEnabled = json['is_auto_download_enabled'];
    this.maxPhotoFileSize = json['max_photo_file_size'];
    this.maxVideoFileSize = json['max_video_file_size'];
    this.maxOtherFileSize = json['max_other_file_size'];
    this.preloadLargeVideos = json['preload_large_videos'];
    this.preloadNextAudio = json['preload_next_audio'];
    this.useLessDataForCalls = json['use_less_data_for_calls'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_auto_download_enabled": this.isAutoDownloadEnabled,
      "max_photo_file_size": this.maxPhotoFileSize,
      "max_video_file_size": this.maxVideoFileSize,
      "max_other_file_size": this.maxOtherFileSize,
      "preload_large_videos": this.preloadLargeVideos,
      "preload_next_audio": this.preloadNextAudio,
      "use_less_data_for_calls": this.useLessDataForCalls
    };
  }

  static const String CONSTRUCTOR = "autoDownloadSettings";

  @override
  String getConstructor() => CONSTRUCTOR;
}
