part of flutter_platform_selector;

class PlatformUniversal {
  static bool get isIOS => defaultTargetPlatform == TargetPlatform.iOS;
  static bool get isAndroid => defaultTargetPlatform == TargetPlatform.android;
  static bool get isWindows => defaultTargetPlatform == TargetPlatform.windows;
  static bool get isMacOS => defaultTargetPlatform == TargetPlatform.macOS;
  static bool get isLinux => defaultTargetPlatform == TargetPlatform.linux;
  static bool get isFuchsia => defaultTargetPlatform == TargetPlatform.fuchsia;
  static bool get isMobile => isIOS || isAndroid;
  static bool get isWeb => kIsWeb;
  static bool get isDesktop => !kIsWeb && (isMacOS || isLinux || isWindows);
  static TargetPlatform get platform => defaultTargetPlatform;
}
