#!/usr/bin/env bash
# Ember — compact color showcase (fits ~110×30)
set -euo pipefail

R=$'\033[0m' B=$'\033[1m' D=$'\033[2m' I=$'\033[3m' U=$'\033[4m'
fg()  { printf '\033[3%sm' "$1"; }
bg()  { printf '\033[4%sm' "$1"; }
fgb() { printf '\033[9%sm' "$1"; }
bgb() { printf '\033[10%sm' "$1"; }

names=(Blk Red Grn Ylw Blu Mag Cyn Wht)

printf '\n'
printf '  %s✦ Ember%s  %swarm orange · refined contrast%s\n' "$B" "$R" "$D" "$R"
printf '  %s────────────────────────────────────────────────────────%s\n' "$D" "$R"
printf '\n'

# prompt + status
printf '  %s%suser%s@%shost%s %s~/ember%s\n' "$(fg 2)" "$B" "$R" "$(fg 4)$B" "$R" "$(fg 5)" "$R"
printf '  %s❯%s git status   %son main · clean%s\n' "$(fg 3)$B" "$R" "$D" "$R"
printf '  %s❯%s npm run build\n' "$(fg 3)$B" "$R"
printf '    %s✓%s ok  %s⚠%s 2 warn  %s✗%s 0 err   %s1.2s%s\n' \
  "$(fg 2)$B" "$R" "$(fg 3)$B" "$R" "$(fg 1)$B" "$R" "$D" "$R"
printf '\n'

# normal
printf '  %sNormal %s' "$B" "$R"
for i in {0..7}; do printf '%s%-4s%s' "$(fg "$i")" "${names[$i]}" "$R"; done
printf '\n         '
for i in {0..7}; do printf '%s████%s ' "$(fg "$i")" "$R"; done
printf '\n         '
for i in {0..7}; do printf '%s    %s ' "$(bg "$i")" "$R"; done
printf '%s\n\n' "$R"

# bright
printf '  %sBright %s' "$B" "$R"
for i in {0..7}; do printf '%s%-4s%s' "$(fgb "$i")" "${names[$i]}" "$R"; done
printf '\n         '
for i in {0..7}; do printf '%s████%s ' "$(fgb "$i")" "$R"; done
printf '\n         '
for i in {0..7}; do printf '%s    %s ' "$(bgb "$i")" "$R"; done
printf '%s\n\n' "$R"

# styles + levels
printf '  %sStyles %s %sbold%s  %sdim%s  %sitalic%s  %sunderline%s\n' \
  "$B" "$R" "$B" "$R" "$D" "$R" "$I" "$R" "$U" "$R"
printf '  %sLevels %s %sDEBUG%s  %sINFO%s  %sWARN%s  %sERROR%s  %sFATAL%s\n' \
  "$B" "$R" "$(fg 4)" "$R" "$(fg 2)" "$R" "$(fg 3)" "$R" "$(fg 1)" "$R" "$(fg 1)$B" "$R"
printf '\n'

# code
printf '  %sCode%s\n' "$B" "$R"
printf '  %s%s// warm embers%s\n' "$D" "$I" "$R"
printf '  %sconst%s theme = %s{%s name: %s"Ember"%s, accent: %s0xd49a6a%s %s}%s;\n' \
  "$(fg 5)" "$R" "$(fg 3)" "$R" "$(fg 2)" "$R" "$(fg 3)" "$R" "$(fg 3)" "$R"
printf '  %sconsole%s.log(theme.name);\n' "$(fg 4)" "$R"
printf '\n'

# diff
printf '  %sDiff%s   %s+ added warm cursor%s   %s- removed cold chrome%s   %s@@ palette%s\n' \
  "$B" "$R" "$(fg 2)" "$R" "$(fg 1)" "$R" "$(fg 5)" "$R"
printf '\n'
printf '  %s────────────────────────────────────────────────────────%s\n' "$D" "$R"
printf '  %sember · ghostty theme%s\n\n' "$D" "$R"
