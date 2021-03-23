part of flutter_platform_selector;

class PlatformSelector {
  static T? select<T>(
      {T? ios, T? android, T? linux, T? macos, T? windows, T? fuchsia, T? web, T? mobile, T? desktop, T? other}) {
    switch (defaultTargetPlatform) {
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.android:
        return android;
      case TargetPlatform.linux:
        return linux;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.fuchsia:
        return fuchsia;
      default:
    }

    if (kIsWeb) {
      return web;
    }

    if (PlatformUniversal.isMobile) {
      return mobile;
    }

    if (PlatformUniversal.isDesktop) {
      return desktop;
    }

    if (other != null) {
      return other;
    }

    throw Exception('not support platform!');
  }
}
