# flutter_platform_selector

[![Pub](https://img.shields.io/pub/v/flutter_platform_selector.svg)](https://pub.dartlang.org/packages/flutter_platform_selector)
[![Awesome Flutter](https://img.shields.io/badge/Awesome-Flutter-blue.svg?longCache=true&style=flat-square)]()
[![Awesome Flutter](https://img.shields.io/badge/Platform-Android_iOS-blue.svg?longCache=true&style=flat-square)]()
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](/LICENSE)

根据平台获取对应数据, 来源于 `ReactNative` 的 [Platform module](https://reactnative.dev/docs/platform-specific-code)

## 使用

🔩 安装

在 `pubspec.yaml` 添加依赖

```
dependencies:
  flutter_platform_selector: <last_version>
```

🔨 使用

```
Text(PlatformSelector.select(
      ios: 'iOS',
      android: 'Android',
      fuchsia: 'Fuchsia',
      desktop: 'Desktop',
      web: 'Web'));
```

## Changelog

Refer to the [Changelog](CHANGELOG.md) to get all release notes.