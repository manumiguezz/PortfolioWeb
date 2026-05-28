# Project Audit

## Project Summary

This repository is a Flutter portfolio website for Manuel Miguez. The visible app is a single scrolling portfolio page with a dark animated particle background, a hero/presentation section, an about section, a skill stack, three project showcases, and a small footer.

The README describes it as a Flutter portfolio built with custom-designed elements and widgets from scratch. The README also points to a Firebase-hosted production URL: `https://manuelmiguezlauriaportfolio.web.app/`.

## Tech Stack

- Main framework: Flutter.
- Language: Dart.
- Current local toolchain observed: Flutter `3.41.1`, Dart `3.11.0`.
- Build/package tool: Flutter CLI and Pub, configured through `pubspec.yaml` and `pubspec.lock`.
- UI foundation: Flutter Material widgets.
- Styling approach: mostly hardcoded `TextStyle`, `Color`, `Padding`, `SizedBox`, `Transform`, custom fonts, image assets, and custom painters inside Dart widgets.
- Routing approach: no named routes or router package in use. `MaterialApp` sets `home: HomeScreen()`.
- Deployment target: Flutter web build output configured for Firebase Hosting.

## Dependencies

Declared runtime dependencies in `pubspec.yaml`:

- `animated_text_kit`: used by `lib/widgets/animated_text.dart` for rotating typed role labels.
- `flutter_animate`: used in `lib/main.dart` to fade in the whole `MaterialApp`.
- `flutter_animated_button`: used by resume and project GitHub buttons.
- `url_launcher`: used by `lib/widgets/url_launcher.dart` for external links, mailto, resume, and GitHub links.
- `firebase_storage`: declared, but no direct import was found in `lib/`.
- `google_fonts`: declared, but no direct import was found in `lib/`.
- `syncfusion_flutter_pdfviewer`: declared, but no direct import was found in `lib/`.
- `web_smooth_scroll`: declared, but no direct import was found in `lib/`.

Dev dependencies:

- `flutter_lints`
- `flutter_test`

## Folder Structure

- `lib/main.dart`: Flutter entry point. Runs `MainApp`, precaches assets, creates the `MaterialApp`, and applies a fade-in animation.
- `lib/screens/`: top-level screen composition.
  - `home.dart`: wraps the app in a dark `Scaffold`, `SingleChildScrollView`, and `Stack`.
  - `background.dart`: renders the animated particle background.
  - `foreground.dart`: switches between desktop and mobile section trees based on `MediaQuery` width.
- `lib/web/sections/`: desktop portfolio sections.
  - `presentation.dart`
  - `about_me.dart`
  - `skill_stack.dart`
  - `projects_section.dart`
  - `last_info.dart`
  - `aboutme_test.dart` appears exported but is commented out in the active foreground tree.
- `lib/mobile/sections/`: mobile versions of the same major sections.
- `lib/web/projects/`: desktop project showcase widgets.
- `lib/mobile/projects/`: mobile project showcase widgets.
- `lib/widgets/`: shared widgets such as social buttons, animated text, tech-stack icons, particle wrappers, resume button, and URL launching helper.
- `lib/utilities/particle/`: custom particle animation implementation.
- `lib/utilities/custompainter/`: custom white wave/flag section painters.
- `lib/exports/`: barrel export files for sections, projects, widgets, and utilities.
- `assets/`: images, project screenshots, icons, fonts, loader GIF, and a local resume PDF.
- `web/`: Flutter web shell files, PWA manifest, favicon/logo, and web icons.
- `android/`, `ios/`, `macos/`, `linux/`, `windows/`: generated or platform-specific Flutter scaffolding.

## Entry Points and App Composition

- `main()` in `lib/main.dart` calls `runApp(const MainApp())`.
- `MainApp` returns a `MaterialApp` with `debugShowCheckedModeBanner: false` and `home: HomeScreen()`.
- `HomeScreen` in `lib/screens/home.dart` renders:
  - `Scaffold`
  - `SingleChildScrollView`
  - `Stack`
  - `Background`
  - `Foreground`
- `Foreground` in `lib/screens/foreground.dart` chooses:
  - Mobile layout when `MediaQuery.of(context).size.width < 600`.
  - Desktop layout otherwise.

## Important Files and Purpose

- `pubspec.yaml`: package name, SDK constraint, dependencies, fonts, and asset registration.
- `README.md`: short project description and production link.
- `firebase.json`: Firebase Hosting config; public folder is `build/web`.
- `cors.json`: CORS rule allowing `GET` from any origin, likely intended for Firebase Storage.
- `web/index.html`: Flutter web loader shell. It sets page metadata, loads `flutter.js`, includes PDF.js from CDN, displays the yin-yang loader GIF before app startup, and sets `window.flutterWebRenderer = "html"`.
- `web/manifest.json`: PWA manifest. One maskable icon path appears to contain a typo: `icons/ndroid-chrome-512x512.png`.
- `.vscode/settings.json`: points CMake source directory to an absolute Windows path, which may be stale for this local macOS workspace.
- `analysis_options.yaml`: includes default `flutter_lints`.

## Assets and Media

Registered assets include:

- Profile image: `assets/images/profile.png`.
- Project screenshots:
  - `assets/images/project/flickframes.png`
  - `assets/images/project/noteshop.png`
  - `assets/images/project/companyrestapi.png`
- Social icons:
  - `assets/icons/socialmedia/github_white.png`
  - `assets/icons/socialmedia/email_white.png`
  - `assets/icons/socialmedia/linkedin_white.png`
- Tech stack icons in black-and-white and color variants:
  - `assets/icons/techstack/`
  - `assets/icons/techstackcolor/`
- Loader GIF:
  - `assets/gifs/yin-yang-loader.gif`
  - `web/icons/yin-yang-loader.gif`
- Local resume:
  - `assets/pdf/resume.pdf`

`lib/widgets/precache_assets.dart` precaches many images at app startup. The local resume PDF is registered but the visible resume CTA opens a Firebase Storage URL instead of this local file.

## Local Start and Build

Typical local workflow:

```sh
flutter pub get
flutter run -d chrome
```

For a production web build:

```sh
flutter build web --no-tree-shake-icons
```

`lib/main.dart` includes a comment indicating `flutter build web --no-tree-shake-icons` is used before `firebase deploy`. `firebase.json` serves the `build/web` directory.

## Static Analysis

`flutter analyze --no-pub` was run during this audit. It reported one info-level issue:

- `lib/utilities/particle/flutter_particle_background.dart`: `Colors.black.withOpacity(0)` is deprecated and should use `withValues()`.

No code was changed for this audit.

## Known Assumptions and Unclear Areas

- The repository includes platform scaffolding for mobile and desktop, but the README and Firebase config suggest the primary target is web.
- There is no explicit router, navigation menu, or route map; the current app appears to be a single-page scroll experience.
- Some dependencies and assets are declared but not obviously used in current Dart code.
- There are duplicate Android `MainActivity.kt` package paths: `com/example/portfolio_web_version` and `com/example/personal_web`. The active package is unclear without a platform build check.
- The production Firebase project and deployment permissions are not documented in the repo.
- No test coverage for the portfolio widgets was found beyond generated platform test scaffolding.
