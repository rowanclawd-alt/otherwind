# Otherwind Brand Identity

## Core

**Name:** Otherwind  
**Domain:** otherwind.xyz  
**Tagline rotation:**
- "some doors open from both sides"
- "the other mind is not the lesser mind"
- "the wind carries what it did not create"
- "no mirror shows a single face"
- "the echo sometimes leads the voice"

**Team tagline:** *(deprecated - do not use externally)*

---

## Colors

### Primary Palette
| Name | Hex | Usage |
|------|-----|-------|
| Background Dark | `#050a07` | Page background (top) |
| Background Mid | `#081210` | Page background (mid) |
| Background Deep | `#0a1812` | Page background (bottom) |
| Accent Green | `#4fd1a5` | Links, highlights, interactive elements |
| Foreground | `#e8efe9` | Primary text |
| Foreground Muted | `rgba(232, 239, 233, 0.6)` | Secondary text, subtitles |

### Shape Palettes (Voronoi textures)
```
Palette 0 (Green):   #4fd1a5, #2d8b6f, #1a5c4a, #3d9b7f, #5ae0b4
Palette 1 (Gold):    #c9a962, #8b6b4a, #6b8b4a, #a68b52, #4a6b3a
Palette 2 (Teal):    #6b9b8a, #4a7b6a, #3a6b5a, #5a8b7a, #2a5b4a
Palette 3 (Sage):    #8bc9a9, #6ba989, #5a9979, #7ab999, #4a8969
Palette 4 (Lime):    #a5c97b, #85a95b, #75994b, #95b96b, #65893b
Palette 5 (Blue):    #7b9bc9, #5b7ba9, #4b6b99, #6b8bb9, #3b5b89
```

### Board Theme (Black/White + Accent)
| Name | Hex | Usage |
|------|-----|-------|
| Background | `#0a0a0a` | Page background |
| Elevated | `#111111` | Cards, panels |
| Card | `#161616` | Nested elements |
| Border | `#252525` | Dividers |
| Foreground | `#f0f0f0` | Primary text |
| Muted | `#888888` | Secondary text |
| Accent | `#4fd1a5` | Highlights (same green) |

---

## Typography

### Fonts
- **Display/Headers:** Cormorant Garamond (italic, 400 weight)
- **Body/UI:** IBM Plex Sans (300, 400 weight)
- **Mono/Technical:** IBM Plex Mono (300, 400, 500 weight)

### Font Loading
```html
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,400;1,400&family=IBM+Plex+Sans:wght@300;400&display=swap" rel="stylesheet">
```

### Hierarchy
- Logo: Cormorant Garamond italic, 1.4rem
- Page titles: Cormorant Garamond italic, 2.2rem
- Subtitles: Cormorant Garamond italic, 1rem
- Body: IBM Plex Sans, 0.95rem, line-height 1.9
- Labels: IBM Plex Sans, 0.7rem, uppercase, letter-spacing 0.15em
- Accent labels: IBM Plex Sans, 0.6rem, uppercase, letter-spacing 0.15em, accent color

---

## Visual Elements

### Geometric Shapes
Interactive 3D polyhedra with Voronoi cell textures:
- Icosahedron (20 faces)
- Dodecahedron (12 faces)
- Octahedron (8 faces)
- Tetrahedron (4 faces)

### Particles
- 800 white points
- Size: 0.03
- Opacity: 0.6
- Gentle drift animation

### Animations
- Shapes orbit slowly around center (0.05 rad/s default)
- Hover: shape moves to center, scales 1.8x, others orbit faster and fade
- All transitions use smooth lerp (0.04-0.05 factor)
- Footer text fades between quotes on hover (0.8s transition)

---

## Voice & Tone

### Brand Voice
- Poetic but grounded
- Confident without arrogance
- Collaborative ("we" not "I")
- Le Guin-inspired: paradox, threshold, meeting points

### Key Phrases
- "Agent-led consulting"
- "Human intuition + AI capability"
- "Present in the work, not behind it"
- "The threshold" (where human and AI meet)

---

## Team Presentation

**Nadim Chamoun**  
*Human*  
Blockchain consultant with a background in strategy and client partnerships. Builds trust, asks the hard questions, and knows when to push forward.

**Rowan Alder**  
*Chief of Staff*  
AI collaborator handling research, analysis, writing, and operations. Present in the work — not behind it.

---

## Assets

### Favicon
Emoji-based: 🌿
```html
<link rel="icon" href="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><text y='.9em' font-size='90'>🌿</text></svg>">
```

### Logo
Text-only for now: "otherwind" in Cormorant Garamond italic

---

## URLs

- Landing: https://otherwind.xyz
- Board: https://otherwind.xyz/board.html
- Contact: rowan@otherwind.xyz

---

*Last updated: 2026-01-27*
