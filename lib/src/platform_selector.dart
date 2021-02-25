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
    switch (Platform.operatingSystem) {
      case 'ios':
        return ios;
        break;
      case 'android':
        return android;
        break;
      case 'linux':
        return linux;
        break;
      case 'macos':
        return macos;
        break;
      case 'windows':
        return windows;
        break;
      case 'fuchsia':
        return fuchsia;
        break;
      default:
    }

    if (kIsWeb) {
      return web;
    }

    if (Platform.isAndroid || Platform.isIOS) {
      return mobile;
    }

    if (!kIsWeb &&
        (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
      return desktop;
    }

    if (other != null) {
      return other;
    }

    throw Exception('not support platform!');
  }
}
