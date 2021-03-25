part of flutter_platform_selector;

class PlatformNull {}

class PlatformSelector {
  static T? select<T>(
      {T? ios, T? android, T? linux, T? macos, T? windows, T? fuchsia, T? web, T? mobile, T? desktop, T? other}) {
    if (PlatformUniversal.isMobile) {
      return _select(mobile, other);
    }

    if (PlatformUniversal.isDesktop) {
      return _select(desktop, other);
    }

    switch (defaultTargetPlatform) {
      case TargetPlatform.iOS:
        return _select(ios, other);
      case TargetPlatform.android:
        return _select(android, other);
      case TargetPlatform.linux:
        return _select(linux, other);
      case TargetPlatform.macOS:
        return _select(macos, other);
      case TargetPlatform.windows:
        return _select(windows, other);
      case TargetPlatform.fuchsia:
        return _select(fuchsia, other);
      default:
    }

    if (kIsWeb) {
      return _select(web, other);
    }

    if (other != null) {
      return other;
    }

    throw Exception('not support platform!');
  }

  static T? _select<T>(T? p, T? d) {
    return p ?? ((p is PlatformNull) ? null : d);
  }
}
