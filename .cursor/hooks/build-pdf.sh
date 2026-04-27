#!/usr/bin/env bash
# Cursor `stop` hook: builds CV PDFs after every agent turn.
# - No-op when nothing is stale (incremental Makefile).
# - On make failure or pandoc `Missing character` warnings, returns a
#   `followup_message` so the agent is auto-prompted to fix the source.
set -euo pipefail

cat >/dev/null

cd "$(dirname "$0")/../.."

needs_build=0
shopt -s nullglob
for md in cv/*.md cv/adapted/*.md; do
  pdf="${md%.md}.pdf"
  if [ ! -f "$pdf" ] || [ "$md" -nt "$pdf" ]; then
    needs_build=1
    break
  fi
done
shopt -u nullglob

[ "$needs_build" -eq 0 ] && exit 0

set +e
output=$(make 2>&1)
status=$?
set -e

bad_warnings=$(printf "%s\n" "$output" | grep -E "Missing character|^! " || true)

if [ "$status" -eq 0 ] && [ -z "$bad_warnings" ]; then
  exit 0
fi

msg="The CV PDF build failed or produced font warnings. Please fix the markdown so the build is clean (e.g. replace any -> / <-> Unicode arrows with ASCII), then we're done.

Make output:
\`\`\`
${output}
\`\`\`"

jq -nc --arg m "$msg" '{followup_message: $m}'
exit 0
