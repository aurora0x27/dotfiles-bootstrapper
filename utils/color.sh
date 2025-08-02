#!/usr/bin/env bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
BOLD='\033[1m'
RESET='\033[0m'

color_echo() {
    local color="$1"
    shift
    echo -e "${!color}$*${RESET}"
}
