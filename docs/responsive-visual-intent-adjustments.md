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
widths without reopening the row to the full viewport. As the viewport approaches
ultra-wide sizes, the offset eases back to a compact cap, so a complete preview
is acceptable when it keeps the composition from spreading apart. The bleed
scale, alignment, and paint offset stay responsive, without adding a visible
inner clip box.

The `My Projects` heading also keeps a larger responsive intro gap before the
first project, giving the title and the project rows more breathing room while
preserving the compact stacked/mobile layouts.

Project headings use `ProjectTitle` to keep titles on one line within their
available project detail width and scale down only when needed. This prevents
awkward orphan-letter wraps such as the final `s` in `Flickframes` breaking onto
its own line at intermediate widths.
