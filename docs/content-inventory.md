# Content Inventory

## Content Source Pattern

Most visible portfolio content is hardcoded directly in Dart widgets. There is no CMS, JSON content file, localization setup, or shared content model visible in the current repository.

Primary content locations:

- Hero content: `lib/web/sections/presentation.dart`, `lib/mobile/sections/presentation_mobile.dart`, `lib/widgets/animated_text.dart`
- About content: `lib/web/sections/about_me.dart`, `lib/mobile/sections/about_me_mobile.dart`, plus inactive/alternate text in `lib/widgets/about_group.dart`
- Skill content: `lib/web/sections/skill_stack.dart`, `lib/mobile/sections/skill_stack_mobile.dart`
- Project content: `lib/web/projects/`, `lib/mobile/projects/`
- Footer content: `lib/web/sections/last_info.dart`, `lib/mobile/sections/last_info_mobile.dart`
- Links: `lib/widgets/custom_animated_button.dart`, `lib/widgets/social_button.dart`, project widgets, and presentation section widgets

## Hero Content

Desktop hero in `lib/web/sections/presentation.dart`:

- `Hi, I'm`
- `Manuel Miguez,`
- `a`
- Animated role text from `AnimatedText`

Mobile hero in `lib/mobile/sections/presentation_mobile.dart`:

- `Hi, I'm`
- `Manu Miguez`
- Animated role text from `AnimatedText`

Animated role text in `lib/widgets/animated_text.dart`:

Desktop:

- `Java Developer.`
- `Student.`
- `Flutter Developer.`
- `Backend Developer.`

Mobile:

- `Java Dev`
- `Student`
- `Flutter Dev`
- `Backend Dev`

Hero social links:

- GitHub profile: `https://github.com/manumiguezz`
- Email: `mailto:manuelmiguezlauria@gmail.com`
- LinkedIn: `https://www.linkedin.com/in/manuelmiguezlauria/`

## About Section

Desktop heading:

- `About me`

Mobile heading:

- `About Me`

The active about copy describes Manuel as an aspiring backend software developer with a passion for Java development, object-oriented programming, Dart, HTML, CSS, Spring Boot, Flutter, Hibernate, JavaFX, RESTful APIs, CRUD, Maven, Gradle, communication, adaptability, and methodical design/problem-solving.

Notable emphasized terms in active about copy:

- backend software developer
- Java / Java development
- object-oriented programming
- Dart
- HTML
- CSS
- Spring Boot
- Flutter
- Hibernate
- JavaFX
- RESTful APIs
- CRUD
- Maven
- Gradle
- communication

Desktop and mobile about copy are similar but not identical:

- Desktop says `Java` followed by `development`.
- Mobile emphasizes `Java development` as one bold phrase.

CTA:

- Button text: `My Resume`
- Opens Firebase Storage PDF URL from `lib/widgets/custom_animated_button.dart`.

Image:

- `assets/images/profile.png`

Inactive/alternate about content:

- `lib/widgets/about_group.dart` contains a different about paragraph mentioning Java 11 and 17, Dart, C, HTML, CSS, Spring Boot, Flutter, Hibernate, JavaFX, RESTful APIs, Maven, Gradle, communication, adaptability, critical thinking, and confidence.
- `lib/web/sections/aboutme_test.dart` uses `AboutGroup`, but `Foreground` currently comments out `AboutMeTest`.

## Skills / Stack Content

Section heading:

- Desktop: `My Stack`
- Mobile: `My Stack`

Mobile helper copy:

- `Tap on them!`

Skills shown:

- Java
- Android
- Dart
- HTML
- CSS
- MySQL
- Spring
- JavaFX
- Hibernate
- Spring Boot
- Flutter
- Git
- Postman
- Maven
- Thymeleaf
- Docker
- Firebase
- JWT

Skill icons come from:

- Black-and-white versions: `assets/icons/techstack/`
- Color versions: `assets/icons/techstackcolor/`

## Project Content

### Flickframes

Source files:

- Desktop: `lib/web/projects/flickframes.dart`
- Mobile: `lib/mobile/projects/flickframes_mobile.dart`

Visible title:

- `Flickframes`

Technology labels:

- `FLUTTER`
- `DART`
- `ISARDB`
- `THEMOVIEDB`

Description summary:

- Entertainment app for movie enthusiasts.
- Shows movie collections, vote averages, descriptions, and cast details.
- Lets users discover similar titles.

Potential copy inconsistency:

- Title says `Flickframes`.
- Description says `FlickerFrames`.

CTA:

- Button text: `Github`
- URL: `https://github.com/manumiguezz/FlickFramesApp`

Image:

- `assets/images/project/flickframes.png`

### Noteshop

Source files:

- Desktop: `lib/web/projects/noteshopapp.dart`
- Mobile: `lib/mobile/projects/noteshopapp_mobile.dart`

Visible title:

- `Noteshop`

Technology labels:

- `FLUTTER`
- `DART`
- `JWT`
- `HTTP`
- `RESTAPI`

Description summary:

- Dart/Flutter shopping app.
- Integrated with the Teslo Shop backend.
- Mentions Riverpod, Go Router, and CRUD REST API endpoints.
- Lets users browse and purchase products and add notes to products.

CTA:

- Button text: `Github`
- URL: `https://github.com/manumiguezz/NoteShopApp`

Image:

- `assets/images/project/noteshop.png`

### Company REST API

Source files:

- Desktop: `lib/web/projects/companyrestapi.dart`
- Mobile: `lib/mobile/projects/companyrestapi_mobile.dart`

Visible title:

- Desktop: `Company REST API`
- Mobile: `REST API APP`

Desktop technology labels:

- `JAVA`
- `SPRING BOOT`
- `JDBC`
- `MYSQL`
- `JPA`
- `CRUD`
- `SPRING SECURITY`

Mobile technology labels:

- `JAVA`
- `SPRING BOOT`
- `JDBC`
- `MYSQL`
- `CRUD`

Description summary:

- Company REST API built mainly with Java and Spring Boot.
- Uses MySQL through JDBC and Spring Data JPA.
- Mentions reducing the codebase by approximately 70%.
- Uses Spring Security and BCrypt-based password encryption.
- Includes CRUD methods for database updates through HTTP requests.

CTA:

- Button text: `Github`
- URL: `https://github.com/manumiguezz/SpringbootEventsCRUD`

Image:

- `assets/images/project/companyrestapi.png`

## Contact and Social Content

Hero contact/social links:

- GitHub profile icon
- Email icon
- LinkedIn icon

Footer text:

- `manuelmiguezlauria@gmail.com`
- `Website built on Flutter`

The footer email is visible text only in current code. The clickable email action appears only in the hero email icon.

## Services and Experience Content

No dedicated Services section was found.

No dedicated Experience section was found.

No education timeline, certification list, testimonials, blog/content section, or contact form was found.

## Footer Content

Footer source files:

- Desktop: `lib/web/sections/last_info.dart`
- Mobile: `lib/mobile/sections/last_info_mobile.dart`

Visible footer copy:

- `manuelmiguezlauria@gmail.com`
- `Website built on Flutter`

## Metadata Content

README:

- Project title: `My Web Portfolio`
- Describes the site as a Flutter portfolio with custom-designed elements and widgets.
- Mentions mobile version released.
- Links production site.

Web metadata in `web/index.html`:

- Meta name: `portfolio`
- Meta content: `Manuel Miguez Lauria.`
- Apple web app title: `personal_web`
- HTML title: `Portfolio`

PWA metadata in `web/manifest.json`:

- Name: `Portfolio`
- Short name: `Portfolio`
- Description: `Manuel Miguez Lauria`

## Empty, Missing, or Unclear Content

- No in-page navigation labels.
- No contact form fields.
- No services copy.
- No experience section.
- No explicit availability, location, or preferred role statement beyond the about copy and animated role text.
- No SEO description meta tag with a standard `name="description"` was found.
- No alt-text content authored for images was found in Flutter widgets.
- No localization or content extraction mechanism was found.

## Content That May Need Rewriting Later

This is not a rewrite recommendation, only an inventory of candidates for future review:

- Long about copy may need tightening for scanning.
- Project descriptions may need consistent naming and sharper outcomes.
- `Flickframes` vs `FlickerFrames` naming is inconsistent.
- `Company REST API` vs `REST API APP` differs between desktop and mobile.
- Footer email could be made consistent with the clickable hero email behavior.
- Inactive `AboutGroup` contains older/different biography content that may become stale or confusing for maintainers.
