part of '../tdapi.dart';

class SendPhoneNumberConfirmationCode extends TdFunction {
  String hash;
  String phoneNumber;
  PhoneNumberAuthenticationSettings settings;
  dynamic extra;

  /// Sends phone number confirmation code. Should be called when user presses "https.
  ///[phoneNumber] Value of the "phone" parameter from the link .
  /// [settings] Settings for the authentication of the user's phone number
  SendPhoneNumberConfirmationCode({this.hash, this.phoneNumber, this.settings});

  /// Parse from a json
  SendPhoneNumberConfirmationCode.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "hash": this.hash,
      "phone_number": this.phoneNumber,
      "settings": this.settings.toJson(),
      "@extra": this.extra
    };
  }

  static const String CONSTRUCTOR = "sendPhoneNumberConfirmationCode";

  @override
  String getConstructor() => CONSTRUCTOR;
}
