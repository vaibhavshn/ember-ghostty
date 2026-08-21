# Ember Dark

A refined dark theme with warm orange accents designed for optimal readability and comfortable contrast.

## Color Design Rationale

| Element | Color | Purpose |
|---------|-------|---------|
| Background | `#18181a` | Deep charcoal, easy on the eyes |
| Foreground | `#d8d4cf` | Warm off-white for comfortable reading |
| Cursor | `#d49a6a` | Muted burnt orange - visible but not harsh |
| Selection | `#3d3530` | Warm brown tint for subtle highlighting |
| Gray/Black (0,8) | `#9a9aa2` / `#b4b4bc` | Readable as FG (dim/comments); not true black |
| White (7,15) | `#c8c4bf` / `#e8e4df` | Warm light grays for primary CLI output |
| Yellow/Orange (3,11) | `#d4a656` / `#e6b86e` | Core orange accents, desaturated for balance |
| Red (1,9) | `#e06c60` / `#e8887e` | Warm coral-red, complements orange |
| Green (2,10) | `#8ab87a` / `#a6d494` | Sage green for contrast against warm tones |
| Blue (4,12) | `#6ca0c8` / `#8abcdc` | Steel blue, cool complement |
| Magenta (5,13) | `#c586b6` / `#d49ec8` | Dusty rose, warm harmony |
| Cyan (6,14) | `#6eb5b5` / `#8ac9c9` | Teal, balanced cool accent |

## Usage

```
theme = light:"Ember Light", dark:"Ember Dark"
minimum-contrast = 1.75
```

`minimum-contrast` auto-boosts low-contrast FG/BG pairs (dim text, light-on-light 256-color cells, etc.).
