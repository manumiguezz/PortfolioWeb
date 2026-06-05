import 'package:flutter/material.dart';
import 'package:portfolio_web_version/data/stack_technologies.dart';

void precacheAssets(BuildContext context) {
  // Load core images early so the first scroll through the portfolio is smooth.

  precacheImage(const AssetImage('assets/images/profile.png'), context);

  precacheImage(
      const AssetImage('assets/icons/socialmedia/email_white.png'), context);
  precacheImage(
      const AssetImage('assets/icons/socialmedia/github_white.png'), context);
  precacheImage(
      const AssetImage('assets/icons/socialmedia/linkedin_white.png'), context);

  precacheImage(
      const AssetImage('assets/images/project/companyrestapi.png'), context);
  precacheImage(
      const AssetImage('assets/images/project/flickframes.png'), context);
  precacheImage(
      const AssetImage('assets/images/project/noteshop.png'), context);

  for (final group in stackTechnologyGroups) {
    for (final technology in group.technologies) {
      precacheImage(AssetImage(technology.iconAsset), context);
    }
  }
}
