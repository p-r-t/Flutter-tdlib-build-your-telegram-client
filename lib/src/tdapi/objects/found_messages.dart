part of '../tdapi.dart';

class FoundMessages implements TdObject {
  List<Message> messages;
  int nextFromSearchId;
  dynamic extra;

  /// Contains a list of messages found by a search.
  ///[messages] List of messages .
  /// [nextFromSearchId] Value to pass as from_search_id to get more results
  FoundMessages({this.messages, this.nextFromSearchId});

  /// Parse from a json
  FoundMessages.fromJson(Map<String, dynamic> json) {
    this.messages = List<Message>.from((json['messages'] ?? [])
        .map((listValue) => Message.fromJson(listValue))
        .toList());
    this.nextFromSearchId = json['next_from_search_id'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "messages": this.messages.map((listItem) => listItem.toJson()).toList(),
      "next_from_search_id": this.nextFromSearchId
    };
  }

  static const String CONSTRUCTOR = "foundMessages";

  @override
  String getConstructor() => CONSTRUCTOR;
}
