#!/bin/bash

set -e
source /home/deniz/oc-accel/snap_path.sh
# Paths
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
LOG_DIR="$SCRIPT_DIR/log"
DATA_DIR="/home/deniz/Projects/SneakySnake/Datasets/ERR240727_1_E2_30000Pairs.txt"

# Ensure log directory exists
mkdir -p "$LOG_DIR"

# Log file
BASE_NAME="report_long_seq"
LOGFILE="$LOG_DIR/${BASE_NAME}_$(date +%Y%m%d_%H%M%S).log"

exec > >(tee -a "$LOGFILE") 2>&1






# Step 1: Host → HBM_P0
./snap_hbm_memcopy -i "$DATA_DIR" -D HBM_P0 -d 0x0 -t 70

# Step 2: HBM_P0 → HBM_P1
./snap_hbm_memcopy -A HBM_P0 -a 0x0 -D HBM_P1 -d 0x0 -t 70 -s 0x1000

# Step 3: HBM_P1 → Host
./snap_hbm_memcopy -A HBM_P1 -a 0x0 -o "$DATA_DIR/t2" -t 70 -s 0x1000


echo
echo "HBM memcopy test completed. Log saved to $LOGFILE"
