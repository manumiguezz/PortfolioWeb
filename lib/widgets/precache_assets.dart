import 'package:flutter/material.dart';

void precacheAssets(BuildContext context) {

// function added to load images as soon as possible 

  precacheImage(const AssetImage('assets/images/profile.png'), context);

  precacheImage(const AssetImage('assets/icons/socialmedia/email_black.png'), context);
  precacheImage(const AssetImage('assets/icons/socialmedia/github_black.png'), context);
  precacheImage(const AssetImage('assets/icons/socialmedia/linkedin_black.png'), context);

  precacheImage(const AssetImage('assets/images/project/companyrestapi.png'), context);
  precacheImage(const AssetImage('assets/images/project/flickframes_white.png'), context);
  precacheImage(const AssetImage('assets/images/project/noteshop_white.png'), context);

  precacheImage(const AssetImage('assets/icons/techstackcolor/c.png'), context);
  precacheImage(const AssetImage('assets/icons/techstackcolor/css.png'), context);
  precacheImage(const AssetImage('assets/icons/techstackcolor/dart.png'), context);
  precacheImage(const AssetImage('assets/icons/techstackcolor/docker.png'), context);
  precacheImage(const AssetImage('assets/icons/techstackcolor/firebase.png'), context);
  precacheImage(const AssetImage('assets/icons/techstackcolor/git.png'), context);
  precacheImage(const AssetImage('assets/icons/techstackcolor/hibernate.png'), context);
  precacheImage(const AssetImage('assets/icons/techstackcolor/html.png'), context);
  precacheImage(const AssetImage('assets/icons/techstackcolor/java.png'), context);
  precacheImage(const AssetImage('assets/icons/techstackcolor/javafx.png'), context);
  precacheImage(const AssetImage('assets/icons/techstackcolor/jwt.png'), context);
  precacheImage(const AssetImage('assets/icons/techstackcolor/maven.png'), context);
  precacheImage(const AssetImage('assets/icons/techstackcolor/mysql.png'), context);
  precacheImage(const AssetImage('assets/icons/techstackcolor/postman.png'), context);
  precacheImage(const AssetImage('assets/icons/techstackcolor/spring.png'), context);
  precacheImage(const AssetImage('assets/icons/techstackcolor/springboot.png'), context);
  precacheImage(const AssetImage('assets/icons/techstackcolor/thymeleaf.png'), context);
}