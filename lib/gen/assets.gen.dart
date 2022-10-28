/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/bookmark-fill.png
  AssetGenImage get bookmarkFill =>
      const AssetGenImage('assets/icons/bookmark-fill.png');

  /// File path: assets/icons/bookmark.png
  AssetGenImage get bookmark =>
      const AssetGenImage('assets/icons/bookmark.png');

  /// File path: assets/icons/car.png
  AssetGenImage get car => const AssetGenImage('assets/icons/car.png');

  /// File path: assets/icons/close.png
  AssetGenImage get close => const AssetGenImage('assets/icons/close.png');

  /// File path: assets/icons/dollar.png
  AssetGenImage get dollar => const AssetGenImage('assets/icons/dollar.png');

  /// File path: assets/icons/facebook.png
  AssetGenImage get facebook =>
      const AssetGenImage('assets/icons/facebook.png');

  /// File path: assets/icons/google.png
  AssetGenImage get google => const AssetGenImage('assets/icons/google.png');

  /// File path: assets/icons/info.png
  AssetGenImage get info => const AssetGenImage('assets/icons/info.png');

  /// File path: assets/icons/instagram.png
  AssetGenImage get instagram =>
      const AssetGenImage('assets/icons/instagram.png');

  /// File path: assets/icons/location.png
  AssetGenImage get location =>
      const AssetGenImage('assets/icons/location.png');

  /// File path: assets/icons/logout.png
  AssetGenImage get logout => const AssetGenImage('assets/icons/logout.png');

  /// File path: assets/icons/menu.png
  AssetGenImage get menu => const AssetGenImage('assets/icons/menu.png');

  /// File path: assets/icons/search.png
  AssetGenImage get search => const AssetGenImage('assets/icons/search.png');

  /// File path: assets/icons/settings.png
  AssetGenImage get settings =>
      const AssetGenImage('assets/icons/settings.png');

  /// File path: assets/icons/share.png
  AssetGenImage get share => const AssetGenImage('assets/icons/share.png');

  /// File path: assets/icons/thumbs-up.png
  AssetGenImage get thumbsUp =>
      const AssetGenImage('assets/icons/thumbs-up.png');

  /// File path: assets/icons/tick.png
  AssetGenImage get tick => const AssetGenImage('assets/icons/tick.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        bookmarkFill,
        bookmark,
        car,
        close,
        dollar,
        facebook,
        google,
        info,
        instagram,
        location,
        logout,
        menu,
        search,
        settings,
        share,
        thumbsUp,
        tick
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/img.jpg
  AssetGenImage get img => const AssetGenImage('assets/images/img.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [img];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
