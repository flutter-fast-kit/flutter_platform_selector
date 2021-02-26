part of flutter_platform_selector;

class PlatformSelector {
  static T select<T>(
      {T ios,
      T android,
      T linux,
      T macos,
      T windows,
      T fuchsia,
      T web,
      T mobile,
      T desktop,
      T other}) {
    switch (defaultTargetPlatform) {
      case TargetPlatform.iOS:
        return ios;
        break;
      case TargetPlatform.android:
        return android;
        break;
      case TargetPlatform.linux:
        return linux;
        break;
      case TargetPlatform.macOS:
        return macos;
        break;
      case TargetPlatform.windows:
        return windows;
        break;
      case TargetPlatform.fuchsia:
        return fuchsia;
        break;
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
