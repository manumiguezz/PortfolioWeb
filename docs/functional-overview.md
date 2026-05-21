# Functional Overview

## Main Purpose

The website presents Manuel Miguez as a software developer through a single scrolling portfolio page. It introduces the developer, lists skills, showcases three projects, and provides links to GitHub, email, LinkedIn, a resume, and project repositories.

## Pages and Routes

- Available route from current code: root/home only.
- Routing implementation: `MaterialApp(home: HomeScreen())` in `lib/main.dart`.
- No named routes, nested routes, route guards, navigation drawer, app bar, or URL-based section routing were found.

## Page Flow

`lib/screens/home.dart` composes the page as a scrollable stack:

1. `Background`
2. `Foreground`

`lib/screens/background.dart` renders `ParticleGroup`.

`lib/screens/foreground.dart` selects one of two layouts:

- Desktop layout when width is `600` or wider.
- Mobile layout when width is below `600`.

## Desktop Sections

Desktop sections are rendered in this order:

1. `Presentation` from `lib/web/sections/presentation.dart`
2. `AboutMe` from `lib/web/sections/about_me.dart`
3. `MyStack` from `lib/web/sections/skill_stack.dart`
4. `ProjectSection` from `lib/web/sections/projects_section.dart`
5. `LastInfo` from `lib/web/sections/last_info.dart`

### Presentation

The desktop hero says:

- `Hi, I'm`
- `Manuel Miguez,`
- `a` followed by animated role text.

Animated role labels come from `lib/widgets/animated_text.dart`:

- `Java Developer.`
- `Student.`
- `Flutter Developer.`
- `Backend Developer.`

Social links are shown as icon buttons:

- GitHub: `https://github.com/manumiguezz`
- Email: `mailto:manuelmiguezlauria@gmail.com`
- LinkedIn: `https://www.linkedin.com/in/manuelmiguezlauria/`

### About

The about section has a white background bounded by custom white wave/flag painters. It displays:

- Profile image: `assets/images/profile.png`
- Heading: `About me`
- Long biography text describing backend development, Java, object-oriented programming, Dart, HTML, CSS, Spring Boot, Flutter, Hibernate, JavaFX, REST APIs, CRUD, Maven, Gradle, communication, adaptability, and design/problem-solving mindset.
- CTA button: `My Resume`

The resume button opens a Firebase Storage PDF URL from `lib/widgets/custom_animated_button.dart`.

### Skill Stack

Desktop skill section heading:

- `My Stack`

Technologies shown:

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

Each skill uses `TechStack`, which swaps between black-and-white and color icon variants on hover.

### Projects

Desktop project section heading:

- `My Projects`

Projects appear in this order:

1. `Flickframes`
2. `Noteshop`
3. `Company REST API`

Each project includes a title, technology labels, paragraph description, `Github` button, and screenshot.

Project links:

- Flickframes: `https://github.com/manumiguezz/FlickFramesApp`
- Noteshop: `https://github.com/manumiguezz/NoteShopApp`
- Company REST API: `https://github.com/manumiguezz/SpringbootEventsCRUD`

### Footer / Last Info

Desktop footer text:

- `manuelmiguezlauria@gmail.com`
- `Website built on Flutter`

The footer email text is not implemented as an interactive mail link in `LastInfo`.

## Mobile Sections

Mobile sections are rendered in this order:

1. `PresentationMobile`
2. `ArrowIcon`
3. `AboutMeMobile`
4. `MyStackMobile`
5. `ProjectSectionMobile`
6. `LastInfoMobile`

### Mobile Presentation

The mobile hero says:

- `Hi, I'm`
- `Manu Miguez`
- Animated role text.

Mobile animated role labels are shorter:

- `Java Dev`
- `Student`
- `Flutter Dev`
- `Backend Dev`

The same GitHub, email, and LinkedIn social icons are shown.

### Mobile Arrow

`ArrowIcon` renders a white down-arrow icon that moves up and down repeatedly. It appears only in the mobile foreground layout.

### Mobile About

The mobile about section uses the same profile image, the heading `About Me`, similar biography copy, and the same `My Resume` CTA.

### Mobile Skill Stack

Mobile skill section heading:

- `My Stack`

Instruction text:

- `Tap on them!`

The same skill list is displayed in rows of three. Skill icons switch to their color version on tap and reset after `700ms`.

### Mobile Projects

Mobile project heading:

- `Projects`

The same three projects are displayed in stacked mobile layouts. The Company REST API mobile title is `REST API APP`, which differs from the desktop title.

### Mobile Footer

Mobile footer text:

- `manuelmiguezlauria@gmail.com`
- `Website built on Flutter`

As on desktop, this footer email text is not implemented as an interactive mail link.

## Calls to Action

- Social icons in the hero:
  - GitHub profile
  - Email via `mailto:`
  - LinkedIn profile
- Resume button:
  - Opens a Firebase Storage-hosted resume PDF.
- Project buttons:
  - Open each project's GitHub repository.

## Animations and Interactions

- Whole app fade-in via `flutter_animate` in `lib/main.dart`.
- Pre-Flutter web loader GIF in `web/index.html`.
- Animated typed role text via `animated_text_kit`.
- Animated particle background via custom utilities in `lib/utilities/particle/`.
- Social icon hover enlargement via `SocialButton`.
- Tech icon hover color swap on desktop via `HoverImageSwitcher`.
- Tech icon tap color swap on mobile via `HoverImageSwitcherMobile`.
- Animated resume and GitHub buttons via `flutter_animated_button`.
- Mobile down-arrow bobbing animation via `ArrowIcon`.
- Custom wave/flag section transitions via custom painters.

## Responsive Behavior

Visible from code:

- The main breakpoint is `width < 600`.
- Desktop and mobile use separate section/project widget trees rather than one shared responsive component set.
- Many font sizes, image sizes, spacings, and button dimensions are calculated from `MediaQuery` width or height.
- The page scrolls vertically with `SingleChildScrollView`.

Unclear from current code:

- Exact behavior on very narrow, very short, tablet, ultrawide, or accessibility-scaled text environments without running visual viewport tests.
- Whether all horizontal `Row` layouts avoid overflow at every width.

## Forms and External Integrations

- No contact form was found.
- No backend API call is made by the portfolio app itself.
- External integrations are link-based:
  - GitHub URLs
  - LinkedIn URL
  - `mailto:` email link in hero
  - Firebase Storage resume PDF link
- `web/index.html` includes PDF.js from CDN, but no in-app PDF viewer usage was found in current Dart code.
