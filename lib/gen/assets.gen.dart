/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/atom_outline.png
  AssetGenImage get atomOutline =>
      const AssetGenImage('assets/icons/atom_outline.png');

  /// File path: assets/icons/bell_fill.png
  AssetGenImage get bellFill =>
      const AssetGenImage('assets/icons/bell_fill.png');

  /// File path: assets/icons/bell_outline.png
  AssetGenImage get bellOutline =>
      const AssetGenImage('assets/icons/bell_outline.png');

  /// File path: assets/icons/bin_outline.png
  AssetGenImage get binOutline =>
      const AssetGenImage('assets/icons/bin_outline.png');

  /// File path: assets/icons/bookmark.png
  AssetGenImage get bookmark =>
      const AssetGenImage('assets/icons/bookmark.png');

  /// File path: assets/icons/burger.png
  AssetGenImage get burger => const AssetGenImage('assets/icons/burger.png');

  /// File path: assets/icons/description.png
  AssetGenImage get description =>
      const AssetGenImage('assets/icons/description.png');

  /// File path: assets/icons/edit_fill.png
  AssetGenImage get editFill =>
      const AssetGenImage('assets/icons/edit_fill.png');

  /// File path: assets/icons/exit_outline.png
  AssetGenImage get exitOutline =>
      const AssetGenImage('assets/icons/exit_outline.png');

  /// File path: assets/icons/home_outline.png
  AssetGenImage get homeOutline =>
      const AssetGenImage('assets/icons/home_outline.png');

  /// File path: assets/icons/idea.png
  AssetGenImage get idea => const AssetGenImage('assets/icons/idea.png');

  /// File path: assets/icons/mainappbaricon.png
  AssetGenImage get mainappbaricon =>
      const AssetGenImage('assets/icons/mainappbaricon.png');

  /// File path: assets/icons/monitor.png
  AssetGenImage get monitor => const AssetGenImage('assets/icons/monitor.png');

  /// File path: assets/icons/music.png
  AssetGenImage get music => const AssetGenImage('assets/icons/music.png');

  /// File path: assets/icons/opendoor_fill.png
  AssetGenImage get opendoorFill =>
      const AssetGenImage('assets/icons/opendoor_fill.png');

  /// File path: assets/icons/photo_icon.png
  AssetGenImage get photoIcon =>
      const AssetGenImage('assets/icons/photo_icon.png');

  /// File path: assets/icons/plane_fill.png
  AssetGenImage get planeFill =>
      const AssetGenImage('assets/icons/plane_fill.png');

  /// File path: assets/icons/search.png
  AssetGenImage get search => const AssetGenImage('assets/icons/search.png');

  /// File path: assets/icons/share.png
  AssetGenImage get share => const AssetGenImage('assets/icons/share.png');

  /// File path: assets/icons/star_fill.png
  AssetGenImage get starFill =>
      const AssetGenImage('assets/icons/star_fill.png');

  /// File path: assets/icons/star_gray_fill.png
  AssetGenImage get starGrayFill =>
      const AssetGenImage('assets/icons/star_gray_fill.png');

  /// File path: assets/icons/star_outline.png
  AssetGenImage get starOutline =>
      const AssetGenImage('assets/icons/star_outline.png');

  /// File path: assets/icons/up and down_otline.png
  AssetGenImage get upAndDownOtline =>
      const AssetGenImage('assets/icons/up and down_otline.png');

  /// File path: assets/icons/url.png
  AssetGenImage get url => const AssetGenImage('assets/icons/url.png');

  /// File path: assets/icons/wavehand_fill.png
  AssetGenImage get wavehandFill =>
      const AssetGenImage('assets/icons/wavehand_fill.png');
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/pic1.jpg
  AssetGenImage get pic1 => const AssetGenImage('assets/images/pic1.jpg');

  /// File path: assets/images/pic2.jpg
  AssetGenImage get pic2 => const AssetGenImage('assets/images/pic2.jpg');

  /// File path: assets/images/pic3.jpg
  AssetGenImage get pic3 => const AssetGenImage('assets/images/pic3.jpg');

  /// File path: assets/images/pic4.jpg
  AssetGenImage get pic4 => const AssetGenImage('assets/images/pic4.jpg');

  /// File path: assets/images/pic5.jpg
  AssetGenImage get pic5 => const AssetGenImage('assets/images/pic5.jpg');

  /// File path: assets/images/pic6.jpg
  AssetGenImage get pic6 => const AssetGenImage('assets/images/pic6.jpg');

  /// File path: assets/images/pic7.jpg
  AssetGenImage get pic7 => const AssetGenImage('assets/images/pic7.jpg');

  /// File path: assets/images/pic9.jpg
  AssetGenImage get pic9 => const AssetGenImage('assets/images/pic9.jpg');
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
    double? scale = 1.0,
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

  String get path => _assetName;
}
