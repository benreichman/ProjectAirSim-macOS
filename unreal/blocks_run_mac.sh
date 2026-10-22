#!/bin/bash
# Run Blocks with the ProjectAirSim plugin on macOS.
#   ./blocks_run_mac.sh          -> standalone game window (sim server on ports 8989/8990)
#   ./blocks_run_mac.sh --editor -> open the Unreal Editor (press Play to start the sim)
set -euo pipefail
UE_ROOT="${UE_ROOT:-/Users/Shared/Epic Games/UE_5.7}"
PROJECT="$(cd "$(dirname "$0")/Blocks" && pwd)/Blocks.uproject"
EDITOR="$UE_ROOT/Engine/Binaries/Mac/UnrealEditor.app/Contents/MacOS/UnrealEditor"
if [ "${1:-}" = "--editor" ]; then
    exec "$EDITOR" "$PROJECT"
fi
exec "$EDITOR" "$PROJECT" -game -windowed -ResX=1280 -ResY=720 -log
