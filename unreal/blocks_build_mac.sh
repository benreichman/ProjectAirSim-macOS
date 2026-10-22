#!/bin/bash
# Build the Blocks editor (with the ProjectAirSim plugin) for macOS.
# Requires SimLibs: run `./build.sh simlibs_release` from the repo root first.
set -euo pipefail
UE_ROOT="${UE_ROOT:-/Users/Shared/Epic Games/UE_5.7}"
PROJECT="$(cd "$(dirname "$0")/Blocks" && pwd)/Blocks.uproject"
"$UE_ROOT/Engine/Build/BatchFiles/Mac/Build.sh" BlocksEditor Mac Development -Project="$PROJECT" -WaitMutex
