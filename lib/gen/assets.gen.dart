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

  /// File path: assets/icons/ballot-fill.png
  AssetGenImage get ballotFill =>
      const AssetGenImage('assets/icons/ballot-fill.png');

  /// File path: assets/icons/ballot.png
  AssetGenImage get ballot => const AssetGenImage('assets/icons/ballot.png');

  /// File path: assets/icons/bell.png
  AssetGenImage get bell => const AssetGenImage('assets/icons/bell.png');

  /// File path: assets/icons/bookmark-fill.png
  AssetGenImage get bookmarkFill =>
      const AssetGenImage('assets/icons/bookmark-fill.png');

  /// File path: assets/icons/bookmark.png
  AssetGenImage get bookmark =>
      const AssetGenImage('assets/icons/bookmark.png');

  /// File path: assets/icons/car.png
  AssetGenImage get car => const AssetGenImage('assets/icons/car.png');

  /// File path: assets/icons/checkbox.png
  AssetGenImage get checkbox =>
      const AssetGenImage('assets/icons/checkbox.png');

  /// File path: assets/icons/dollar.png
  AssetGenImage get dollar => const AssetGenImage('assets/icons/dollar.png');

  /// File path: assets/icons/grid.png
  AssetGenImage get grid => const AssetGenImage('assets/icons/grid.png');

  /// File path: assets/icons/home-fill.png
  AssetGenImage get homeFill =>
      const AssetGenImage('assets/icons/home-fill.png');

  /// File path: assets/icons/home.png
  AssetGenImage get home => const AssetGenImage('assets/icons/home.png');

  /// File path: assets/icons/info.png
  AssetGenImage get info => const AssetGenImage('assets/icons/info.png');

  /// File path: assets/icons/map-fill.png
  AssetGenImage get mapFill => const AssetGenImage('assets/icons/map-fill.png');

  /// File path: assets/icons/map.png
  AssetGenImage get map => const AssetGenImage('assets/icons/map.png');

  /// File path: assets/icons/marker.png
  AssetGenImage get marker => const AssetGenImage('assets/icons/marker.png');

  /// File path: assets/icons/motorcycle.png
  AssetGenImage get motorcycle =>
      const AssetGenImage('assets/icons/motorcycle.png');

  /// File path: assets/icons/power.png
  AssetGenImage get power => const AssetGenImage('assets/icons/power.png');

  /// File path: assets/icons/refresh.png
  AssetGenImage get refresh => const AssetGenImage('assets/icons/refresh.png');

  /// File path: assets/icons/search-fill.png
  AssetGenImage get searchFill =>
      const AssetGenImage('assets/icons/search-fill.png');

  /// File path: assets/icons/search.png
  AssetGenImage get search => const AssetGenImage('assets/icons/search.png');

  /// File path: assets/icons/settings.png
  AssetGenImage get settings =>
      const AssetGenImage('assets/icons/settings.png');

  /// File path: assets/icons/share.png
  AssetGenImage get share => const AssetGenImage('assets/icons/share.png');

  /// File path: assets/icons/star.png
  AssetGenImage get star => const AssetGenImage('assets/icons/star.png');

  /// File path: assets/icons/user-fill.png
  AssetGenImage get userFill =>
      const AssetGenImage('assets/icons/user-fill.png');

  /// File path: assets/icons/user.png
  AssetGenImage get user => const AssetGenImage('assets/icons/user.png');

  /// File path: assets/icons/van.png
  AssetGenImage get van => const AssetGenImage('assets/icons/van.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        ballotFill,
        ballot,
        bell,
        bookmarkFill,
        bookmark,
        car,
        checkbox,
        dollar,
        grid,
        homeFill,
        home,
        info,
        mapFill,
        map,
        marker,
        motorcycle,
        power,
        refresh,
        searchFill,
        search,
        settings,
        share,
        star,
        userFill,
        user,
        van
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
