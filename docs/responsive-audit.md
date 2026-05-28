# Responsive Audit

## 1. Current responsive architecture

The app is a single-page Flutter web portfolio rendered by `HomeScreen` in `lib/screens/home.dart`. The page body is a `SingleChildScrollView` with a `Stack` containing `Background` and `Foreground`, so every foreground section scrolls over the particle background.

`lib/screens/foreground.dart` owns the main responsive decision:

- `mobileVersion = widthQuery < 600`
- `< 600px` uses the mobile section widgets.
- `>= 600px` uses the desktop section widgets.

Desktop section files:

- `lib/web/sections/presentation.dart`
- `lib/web/sections/about_me.dart`
- `lib/web/sections/skill_stack.dart`
- `lib/web/sections/projects_section.dart`
- `lib/web/sections/last_info.dart`
- Desktop project widgets in `lib/web/projects/`

Mobile section files:

- `lib/mobile/sections/presentation_mobile.dart`
- `lib/mobile/sections/about_me_mobile.dart`
- `lib/mobile/sections/skill_stack_mobile.dart`
- `lib/mobile/sections/projects_section_mobile.dart`
- `lib/mobile/sections/last_info_mobile.dart`
- Mobile project widgets in `lib/mobile/projects/`

Most responsive behavior is currently hardcoded directly in widgets with `MediaQuery.of(context).size.width` and `height`. There are no shared breakpoint constants or reusable clamp helpers.

Sections and widgets using hardcoded viewport dimensions:

- `Foreground`: section gaps use `heightQuery * 0.07`, `0.1`, `0.15`, and desktop footer gap uses `heightQuery * 0.5`.
- `Presentation`: top and left padding, hero font size, social row height, and social gaps derive from viewport width/height.
- `PresentationMobile`: top padding, title size, social spacing, and gaps derive from viewport width/height.
- `AboutMe`: flag heights, body height, horizontal padding, image width, text column width/height, title size, body size, and button spacing derive from viewport width/height.
- `AboutMeMobile`: flag heights, padding, image width, title size, title line height, body font size, and button gaps derive from viewport width/height.
- `MyStack`: section padding, title size, icon size, label size, and vertical gaps derive from viewport width/height.
- `MyStackMobile`: same pattern, with fixed 3-column rows.
- `ProjectSection` and `ProjectSectionMobile`: section title and inter-project gaps derive from viewport width.
- `lib/web/projects/*`: fixed `Row` layouts, fixed text widths, fixed image widths, fixed transforms/scales, fixed button widths and heights.
- `lib/mobile/projects/*`: fixed `Column` layouts, fixed tech-label `Row`s, screenshot `Transform.scale(scale: 1.5)`, full-width buttons, and height-based vertical gaps.
- `LastInfo` and `LastInfoMobile`: fixed horizontal `Row`, width-based font size, and width-based gap.
- `CustomAnimatedButton`: uses the same `< 600px` threshold as `Foreground`, with width/height/font/border from viewport size.
- `SocialButton`: icon size and hover width use viewport width.
- `TechStack`: uses `< 600px` internally to choose desktop/mobile hover behavior.

Files with fixed `Row`, `Column`, `SizedBox`, `Transform`, or forced heights that are notable responsive risks:

- `AboutMe`: desktop `Row`, forced white container height of one viewport, text box height of `heightQuery * 0.6`, image width of `widthQuery * 0.415`, and flag `SizedBox` heights of `heightQuery * 0.2`.
- `Presentation`: fixed two-line desktop `Row`s with large width-derived font sizes.
- `MyStack`: fixed rows of six stack items.
- `MyStackMobile`: fixed rows of three stack items.
- `web/projects/*`: desktop rows with image transforms and scaled screenshots.
- `mobile/projects/*`: screenshot transforms and full-width tech-label rows.
- `LastInfo` and `LastInfoMobile`: fixed horizontal footer rows.
- `Foreground`: forced large vertical gaps, especially `heightQuery * 0.5` before the desktop footer.

## 2. Section-by-section findings

### Presentation

Current behavior: desktop hero starts at `height * 0.2` with left padding of `width * 0.07`. Text is split into rows and sized at `width * 0.065`.

Potential failure points: `600px-900px` desktop widths produce large text relative to available row width, especially because the first row includes `"Hi, I'm "` plus an expanded name. Very wide screens can push the heading toward oversized display text.

Overflow risks: medium. The name uses ellipsis, but ellipsis at intermediate desktop widths can hide core identity.

Excessive spacing risks: medium. Top padding is height-based, so short-height viewports can feel cramped while tall viewports can push content too low.

Typography scaling risks: high. Font size is uncontrolled and purely width-based.

Image/screenshot scaling risks: none in this section.

Priority: medium.

### PresentationMobile

Current behavior: mobile hero stacks intro text, name, animated text, and social buttons. Title size is `width * 0.13`, top padding is `height * 0.25`.

Potential failure points: very narrow mobile widths around `360px` and text-scaled browsers can make the animated text row tight. Large mobile/tablet widths would become oversized if this layout is used above 600px.

Overflow risks: medium. The animated text is in a `Row` without wrapping around it.

Excessive spacing risks: medium. Top padding at `height * 0.25` creates a large empty lead-in on tall phones and tablets.

Typography scaling risks: medium. Width-based font size is reasonable on phones but needs a max clamp for tablet use.

Image/screenshot scaling risks: none in this section.

Priority: medium.

### AboutMe

Current behavior: desktop `AboutMe` creates a white band between two flag painters. The band has forced height `height * 1`. Inside it, a row places a large profile image beside a text column. Text is placed in a `FittedBox` wrapping a fixed-size box of `width * 0.4` by `height * 0.6`. The resume button sits below the fitted text.

Potential failure points: high at `600px-1099px`, especially around `908px` and `609px`. The desktop row remains active at `609px`, even though the image, title, text, and button no longer have enough horizontal space. At medium widths, the image can sit visually low while the text column compresses. The fixed text-box height can make the resume button feel detached from the copy.

Overflow risks: high. The row uses image width + gap + text width close to the full padded width; below tablet widths this becomes fragile. Text is scaled by `FittedBox`, so it may shrink instead of wrapping naturally.

Excessive spacing risks: high. The white band is always one viewport tall and flags add `0.4` viewport height total. This creates heavy vertical whitespace on tall displays and unstable rhythm on short displays.

Typography scaling risks: high. Body size is `width * 0.010`, which is around 6px at `609px`, 9px at `908px`, and 14px at `1440px`. The `FittedBox` can reduce it further.

Image/screenshot scaling risks: high. The image width remains `41.5%` of the viewport, which competes with the text column at intermediate widths.

Priority: high.

### AboutMeMobile

Current behavior: mobile `AboutMe` stacks a compact image/title header, justified rich text, and the resume button inside a white band. Flags are mobile-specific. Body font size is `width * 0.04`.

Potential failure points: `360px-430px` widths can still be tight, but this layout is structurally safer than the desktop version. If used at tablet widths without clamps, title and body text would become too large.

Overflow risks: medium. Header row can become tight with text scaling. The title line height is derived from viewport height, which is fragile.

Excessive spacing risks: medium. Flag heights and button gaps are height-based.

Typography scaling risks: medium. Body size is acceptable on phones but should be clamped for tablet use.

Image/screenshot scaling risks: low. The image is small, though it should have min/max constraints.

Priority: medium.

### MyStack

Current behavior: desktop skill stack uses three fixed rows of six items. Icon size is `width * 0.074`; label size is `width * 0.010`.

Potential failure points: around `600px-900px`, six items in a row have limited room. Labels like `Spring Boot` and `Thymeleaf` can become small or collide with neighboring items if text scale increases.

Overflow risks: medium. The row uses `spaceBetween`, so physical overflow is not guaranteed, but item labels and hover sizing can make the row visually crowded.

Excessive spacing risks: medium. Vertical gaps use viewport height.

Typography scaling risks: medium. Labels become very small on narrow desktop.

Image/screenshot scaling risks: low. Icons scale predictably but need min/max limits.

Priority: medium.

### MyStackMobile

Current behavior: mobile skill stack uses six fixed rows of three items. Icon size is `width * 0.17`; label size is `width * 0.035`.

Potential failure points: `360px` with text scaling can crowd three items per row. If this layout is used at tablet widths, icons become very large.

Overflow risks: medium. Fixed rows do not reflow if labels are long.

Excessive spacing risks: medium. Repeated `height * 0.07` gaps create a tall section on phones and tablets.

Typography scaling risks: medium.

Image/screenshot scaling risks: low.

Priority: medium.

### ProjectSection

Current behavior: desktop project section renders a large title and then three desktop project rows with gaps based on viewport width.

Potential failure points: `600px-1099px`; desktop project rows need too much horizontal room.

Overflow risks: high because individual project widgets use fixed rows, fixed text widths, and transformed/scaled screenshots.

Excessive spacing risks: medium. Inter-project gaps grow with width and may be too large on wide screens.

Typography scaling risks: medium. Section title is `width * 0.07`.

Image/screenshot scaling risks: high in project widgets.

Priority: high.

### ProjectSectionMobile

Current behavior: mobile project section uses a padded column and mobile project widgets.

Potential failure points: mobile project labels are horizontal rows with several labels. At `360px`, labels such as `THEMOVIEDB` and `SPRING BOOT` are likely to crowd or overflow.

Overflow risks: high in tech-label rows.

Excessive spacing risks: medium because screenshot spacers use viewport height.

Typography scaling risks: medium.

Image/screenshot scaling risks: high because screenshots are scaled to 1.5x in a column.

Priority: high.

### Individual project widgets

Current behavior: desktop project widgets use a text column and a screenshot in a `Row`. Screenshots are moved with `Transform` and enlarged using `Transform.scale`. Mobile project widgets stack text, a full-width button, and a 1.5x scaled screenshot.

Potential failure points: desktop project widgets are risky below about `1000px`; mobile widgets are risky below about `390px` for label rows and screenshot scaling.

Overflow risks: high. Desktop transformed screenshots can exceed available width. Mobile label rows can overflow horizontally.

Excessive spacing risks: medium. Height-based gaps before/after screenshots can create large empty areas.

Typography scaling risks: medium. Project body copy can become small on narrow desktop.

Image/screenshot scaling risks: high. The screenshots should be constrained by available width instead of transformed beyond it.

Priority: high.

### LastInfo

Current behavior: desktop footer is a centered row with email and build note separated by `width * 0.1`.

Potential failure points: `600px-768px` desktop layout and text scaling. The email plus note can exceed available width.

Overflow risks: medium.

Excessive spacing risks: low in the footer itself, high because `Foreground` puts `height * 0.5` above it on desktop.

Typography scaling risks: medium. Font is very small on narrow desktop.

Image/screenshot scaling risks: none.

Priority: medium.

### LastInfoMobile

Current behavior: same footer content as a row, with smaller width-based font and `width * 0.05` gap.

Potential failure points: `360px-430px`, because the email plus build note may not fit on one line.

Overflow risks: high.

Excessive spacing risks: low.

Typography scaling risks: medium.

Image/screenshot scaling risks: none.

Priority: high.

### Foreground

Current behavior: `Foreground` chooses either the full mobile tree or full desktop tree at `600px`. It also owns most inter-section spacing.

Potential failure points: high at `600px-699px` if the breakpoint stays at 600, and high at `700px-1099px` if desktop sections are not made tablet-aware.

Overflow risks: indirect but high because it routes intermediate widths into desktop widgets.

Excessive spacing risks: high. Desktop uses `height * 0.5` before footer, causing a large empty stretch. Section spacing depends on height rather than content rhythm.

Typography scaling risks: indirect but high because it does not pass layout tiers or constraints down.

Image/screenshot scaling risks: indirect but high in project and about sections.

Priority: high.

## 3. Viewport test matrix

This matrix is reasoned from the current code paths and viewport formulas before implementation.

| Width | Active layout | Risk summary |
| --- | --- | --- |
| 1440px | Desktop | Generally acceptable. Hero heading is about 94px and project/about headings are about 101px, which is large but aligned with the current identity. About body is about 14px. Project screenshots are large and transformed but likely fit. Footer has a very large `height * 0.5` gap above it. |
| 1200px | Desktop | Mostly acceptable but starting to tighten. About body is about 12px and the fixed one-viewport white band can feel tall. Project rows still likely fit. Text remains readable. Buttons stay near content. |
| 1024px | Desktop | Narrow desktop/tablet risk begins. About image and text compete for width; body text is about 10px before any `FittedBox` scaling. Six-item skill rows and project rows look crowded. Buttons can feel wide enough but section rhythm is unstable. |
| 908px | Desktop | Known high-risk width. About image sits too low visually, text becomes compressed, and the resume button separates from the related copy. Project rows and skill rows are crowded. Text readability is marginal. Horizontal overflow is possible in project screenshots and labels. |
| 768px | Desktop | High risk. Desktop layout remains active even though sections need tablet/mobile behavior. About text is about 8px and can be scaled smaller. Project screenshots and fixed rows are likely visually unbalanced. Footer row may become cramped. |
| 609px | Desktop | High risk. This is just above the breakpoint, so the app still uses desktop widgets. About text is about 6px, the desktop row is too narrow, and project rows are not suitable. Buttons may appear detached from compressed content. Horizontal overflow is likely. |
| 599px | Mobile | Mobile layout activates. Structure is safer, but typography and icon sizes jump sharply at the breakpoint. Mobile project tech rows can overflow. Screenshots are scaled 1.5x and may create horizontal or visual overflow. |
| 430px | Mobile | Mostly usable. Title sizes are large but likely readable. Mobile project label rows are risky, especially long labels. Footer row can crowd. Vertical spacing can feel tall because many gaps use viewport height. |
| 390px | Mobile | Usable with risks. Project labels and footer row are likely the main horizontal overflow risks. Body text around 16px is readable. Screenshot scaling may feel too large. |
| 360px | Mobile | Highest mobile risk. Tech labels, footer row, and hero animated text can be tight. Body copy is readable, but fixed rows and scaled screenshots need wrapping/constraints. |

## 4. Recommended responsive strategy

Use three practical layout tiers instead of one hard breakpoint:

- Wide desktop: `>= 1100px`
- Narrow desktop/tablet: `700px-1099px`
- Mobile: `< 700px`

The current `<600px` threshold is too low because the desktop `AboutMe` and project rows are already visually broken at `609px` and look compromised around `768px-908px`. Moving the foreground switch to `<700px` immediately prevents the worst `600px-699px` desktop failures. The `700px-1099px` range should then be handled by making desktop sections tablet-aware with wrapping, constraints, or vertical stacking where necessary.

First implementation pass recommendations:

- Raise the main mobile breakpoint to `<700px` in `Foreground`.
- Replace `Foreground`'s largest height-based gaps with clamped fixed values so tall screens do not create huge empty bands.
- Make desktop `AboutMe` use a `LayoutBuilder`. Keep the side-by-side desktop layout for wide widths, but switch to a stacked/tablet layout below about `1100px`.
- Remove `FittedBox` from `AboutMe` body copy so text wraps naturally instead of shrinking to unreadable sizes.
- Clamp title, body, icon, button, and gap sizes.
- Update `CustomAnimatedButton`, `SocialButton`, and `TechStack` to align with the new breakpoint/clamp behavior.
- Use `Wrap` for skill icons where fixed rows are likely to crowd.
- Use `Wrap` for project tech labels.
- Constrain project screenshots instead of using aggressive transforms/scales at narrow widths.
- Let footer content wrap or stack, and make the visible email clickable with the existing mailto behavior.

These changes preserve the monochrome identity, current content, animations, particle background, custom flag painters, and existing links while making the existing design safer across realistic desktop, tablet, and phone widths.
