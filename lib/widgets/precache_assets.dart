import 'package:flutter/material.dart';
import 'package:portfolio_web_version/data/stack_technologies.dart';

const List<String> _initialPortfolioAssets = [
  'assets/icons/socialmedia/email_white.png',
  'assets/icons/socialmedia/github_white.png',
  'assets/icons/socialmedia/linkedin_white.png',
];

List<String> get _deferredPortfolioAssets => [
      'assets/images/profile.png',
      'assets/images/project/companyrestapi.png',
      'assets/images/project/flickframes.png',
      'assets/images/project/noteshop.png',
      for (final group in stackTechnologyGroups)
        for (final technology in group.technologies) technology.iconAsset,
    ];

Future<void> precacheInitialPortfolioAssets(BuildContext context) {
  return _precachePortfolioImages(context, _initialPortfolioAssets);
}

Future<void> precacheDeferredPortfolioAssets(BuildContext context) {
  return _precachePortfolioImages(context, _deferredPortfolioAssets);
}

Future<void> _precachePortfolioImages(
  BuildContext context,
  Iterable<String> assetPaths,
) {
  return Future.wait(
    assetPaths.map((assetPath) => _precachePortfolioImage(context, assetPath)),
  );
}

Future<void> _precachePortfolioImage(
  BuildContext context,
  String assetPath,
) async {
  try {
    await precacheImage(AssetImage(assetPath), context);
  } catch (error) {
    debugPrint('Unable to precache portfolio asset "$assetPath": $error');
  }
}
