# UI/UX Inventory

## General Visual Style

The current visual style is minimal, high-contrast, and monochrome-heavy. The main canvas is a near-black background with subtle animated dark particles. Most text and controls on dark sections are white. The about section uses a large white band with black text and custom wave/flag transitions.

The portfolio feels custom-built rather than template-based. Most visual decisions are encoded directly in widgets through `MediaQuery` sizing, `Transform`, `Padding`, and hardcoded colors.

## Layout Patterns

- Single-page vertical scroll.
- Full-width dark background with foreground content stacked on top.
- Desktop hero is left-aligned with large type and social icons underneath.
- Mobile hero is centered and uses larger proportional text.
- About section uses a white content band between custom painted wave shapes.
- Desktop about section uses a side-by-side image/text layout.
- Mobile about section stacks image/title/copy/CTA vertically.
- Desktop projects alternate text/image arrangement:
  - Flickframes: text left, image right.
  - Noteshop: image left, text right.
  - Company REST API: text left, image right.
- Mobile projects are stacked: title, tech labels, description, button, screenshot.
- Skill stack is a grid made from manual rows.

## Typography Usage

- Font families are declared in `pubspec.yaml`:
  - `madetommy`
  - `madetommybold`
  - `poppinsregular`
  - `poppinsbold`
  - `poppinslight`
  - `poppinsthin`
- The visible Dart code uses Poppins family names heavily.
- `madetommy` and `madetommybold` are declared but were not found in current `lib/` usage.
- Heading sizes are calculated from viewport width, for example `widthQuery * 0.07` on desktop and `widthQuery * 0.15` on mobile section headings.
- Body text is mostly `poppinslight`.
- Project tech labels use `poppinsregular`.
- Emphasis inside about copy uses bold `TextSpan`s.

## Color Palette Usage

Observed colors:

- Main scaffold: `Color.fromARGB(255, 18, 18, 18)`.
- Particle colors: dark grays around `21`, `28`, `34`, and `50` RGB values.
- Primary text on dark background: `Colors.white`.
- About section background: `Colors.white`.
- About section text/buttons: `Colors.black`.
- Mobile helper text `Tap on them!`: `Color.fromARGB(255, 89, 89, 89)`.
- Buttons generally use transparent backgrounds with white or black borders and invert/fill on animation.

The palette is intentionally restrained. There are color accents only when tech icons switch from black-and-white to color.

## Spacing and Hierarchy

- Spacing is mostly proportional to viewport height or width, for example `heightQuery * 0.07`.
- Section headings are very large relative to the viewport, creating strong hierarchy.
- The about section on desktop is set to `heightQuery * 1`, making it a full-viewport-height content band.
- Desktop project sections use large vertical gaps like `widthQuery * 0.1`.
- Desktop foreground adds a very large gap before the footer: `heightQuery * 0.5`.
- Mobile foreground uses smaller but still prominent vertical spacing between sections.

Potential observation: because spacing is tied to viewport dimensions rather than content constraints, some layouts may behave unpredictably on unusually short, narrow, or text-scaled displays.

## Buttons and Interactive Elements

- Resume CTA: `CustomAnimatedButton` with `flutter_animated_button`.
- Project CTAs: `AnimatedButton` instances in each project component.
- Hero social links: image-based `SocialButton` widgets.
- Tech stack icons: `TechStack` plus hover/tap image switchers.
- Mobile arrow: animated but not interactive.

Button styling:

- Rectangular.
- Border radius set to `0`.
- Transparent background with border.
- Hover animation fills/inverts button colors.

## Cards, Sections, and Components

There are no traditional card components with rounded surfaces. The main repeated content patterns are:

- Section blocks.
- Project showcase rows/columns.
- Skill icon groups.
- Social icon buttons.
- Custom painted separators.

Important reusable components:

- `SocialButton`
- `AnimatedText`
- `TechStack`
- `HoverImageSwitcher`
- `HoverImageSwitcherMobile`
- `CustomAnimatedButton`
- `ParticleGroup`
- `CustomParticleBackground`
- `ArrowIcon`

## Mobile and Responsive Considerations

Observed mobile-specific implementation:

- Breakpoint: `width < 600`.
- Separate mobile section and project files.
- Mobile hero uses shorter name and shorter animated role labels.
- Mobile skill stack includes explicit instruction text: `Tap on them!`.
- Mobile tech icon color state is tap-based and resets after `700ms`.
- Mobile project sections place screenshots below descriptions.

Potential mobile risks visible from code:

- Some tech label rows are manual `Row` layouts with `spaceBetween`, which may overflow on narrow screens or large text settings.
- Footer is a horizontal `Row` with email and "Website built on Flutter"; this may be tight on small screens.
- Project screenshots are scaled up with `Transform.scale(scale: 1.5)`, which may cause clipping or large whitespace depending on viewport.

## Accessibility Observations

Observed:

- Text contrast is generally strong: white on dark, black on white.
- The main CTAs have visible text labels.
- Social links are image-based and do not expose visible text labels.
- Tech icons are image-based and do not expose visible text labels beyond nearby visual text.
- No explicit `Semantics`, tooltips, focus handling, or keyboard navigation handling were found for custom interactive elements.
- Hover-only enhancements exist on desktop, while mobile has tap alternatives for tech icons.
- Animations run automatically and there is no visible reduced-motion handling in code.
- Images are `Image.asset` widgets, so web alt text is not directly authored in HTML.
- The page has no app bar, landmark-like navigation, or skip links.

## Potential UX Friction Points

- No navigation menu or section anchors; users must scroll manually.
- Very long about copy may slow scanning.
- Desktop and mobile content are duplicated in separate files, increasing the chance of inconsistent copy or behavior.
- Company REST API has different titles on desktop and mobile.
- Footer email is text only, while the hero email icon is clickable.
- Some dependencies and assets appear unused, which can make future maintenance less obvious.
- The PWA manifest appears to have one typo in a maskable icon path.
- The project name appears with both `Flickframes` and `FlickerFrames` spellings in visible copy.
- Current SEO metadata is minimal in `web/index.html`.
