#!/bin/bash

# === Parameters ===
DEBUG_MODE=0
KMER_SIZE=100
READ_LENGTH=100
ITERATIONS=100
INPUT_FILE="../Datasets/ERR240727_1_E2_30000Pairs.txt"
NUM_READS=30000
NUM_THREADS=10
EDIT_THRESHOLD=10

# === Log setup ===
LOG_DIR="logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/report_log_short_seq.txt"

# === Run the program and log only stdout ===
./main $DEBUG_MODE $KMER_SIZE $READ_LENGTH $ITERATIONS $INPUT_FILE $NUM_READS $NUM_THREADS $EDIT_THRESHOLD > "$LOG_FILE"
