import 'dart:io' show Platform;

class Secret {
  static const ANDROID_CLIENT_ID = "<AIzaSyC642uGdlMYfmzNnTvhbgvhh4MClds5j5Y>";
  static const IOS_CLIENT_ID = "<AIzaSyA5Mb3M-bPbay9WRgItM1wKlokDZPArPws>";
  static String getId() => Platform.isAndroid ? Secret.ANDROID_CLIENT_ID : Secret.IOS_CLIENT_ID;
}