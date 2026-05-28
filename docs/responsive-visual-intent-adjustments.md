# Responsive visual intent adjustments

This refinement keeps the earlier responsive pass where it improved the
portfolio without changing its voice: shared size clamps, reduced section gaps,
wrapped project tech labels, readable body copy, buttons that stay attached to
their content, and constraints that prevent page-level horizontal overflow.

The About section was revised on the web path so narrow desktop and tablet widths
use a compact two-column composition instead of moving the profile image above
the copy. The profile image remains on the left, while the title, biography, and
resume button remain a single right-side block with smaller clamped image, gap,
title, and body values as space tightens. The dedicated mobile About section is
reserved for widths below `600px`, where it uses its compact profile/title header
and vertical copy flow.

Project previews no longer default to fully contained screenshots. `ProjectPreview`
keeps a responsive layout slot while letting scaled mockups paint past that slot.
Wide web project rows use a centered composition width so text and artwork stay
visually related on ultra-wide screens. A responsive paint offset now moves
desktop previews toward the nearest viewport edge when the centered composition
would otherwise leave a visible side gap, then adds a small overscan so the
mockup is perceived as cropped by the viewport instead of merely touching it.
This restores the original peek-in feeling across common desktop and laptop
widths without reopening the row to the full viewport. On wide desktop screens,
the offset begins easing back toward the compact composition before the layout
reaches ultra-wide proportions. During that same transition, a temporary
wide-desktop scale bridge gives the previews more presence around the `2060px`
to `2176px` range, then eases back out by `2300px`. Together, the edge crop,
growth bridge, and compact ultra-wide behavior avoid the awkward asymmetric
range where text stays centered but artwork remains pinned to the outer edge. At
ultra-wide sizes, a complete preview is acceptable when it keeps the composition
from spreading apart. The bleed scale, alignment, and paint offset stay
responsive, without adding a visible inner clip box.

The `My Projects` heading also keeps a larger responsive intro gap before the
first project, giving the title and the project rows more breathing room while
preserving the compact stacked/mobile layouts.

In the web stacked project range, used after mobile but before the desktop
side-by-side rows, each project now leads with its preview image before the text.
Those previews use a larger centered bleed so the mockups can extend past both
horizontal sides while the text block keeps the readable width from the previous
responsive pass. This stacked range also uses larger vertical gaps below the
section heading, between each preview and its text, and between consecutive
projects so the oversized previews do not feel crowded.

Project headings use `ProjectTitle` to keep titles on one line within their
available project detail width and scale down only when needed. This prevents
awkward orphan-letter wraps such as the final `s` in `Flickframes` breaking onto
its own line at intermediate widths.
