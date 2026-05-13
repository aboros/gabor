#!/usr/bin/env bash
# Regenerates images/gallery/manifest.json from files in that folder.
# Run after adding or removing gallery images (requires python3).
set -euo pipefail
export ROOT="$(cd "$(dirname "$0")/.." && pwd)"
python3 <<'PY'
import json, os

d = os.path.join(os.environ["ROOT"], "images", "gallery")
ext = (".webp", ".jpg", ".jpeg", ".png", ".gif", ".avif")
files = sorted(
    f
    for f in os.listdir(d)
    if f != "manifest.json"
    and os.path.isfile(os.path.join(d, f))
    and f.lower().endswith(ext)
)
path = os.path.join(d, "manifest.json")
with open(path, "w", encoding="utf-8") as out:
    json.dump(files, out, ensure_ascii=False, indent=2)
    out.write("\n")
print(f"Wrote {len(files)} entries to {path}")
PY
