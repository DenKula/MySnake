
#include "hw/pipeline.h"

int sneaky_snake_wrapper(
    d_bit_in_type &read_seq,
    d_bit_in_type &ref_seq)
{
    const int k_length         = LENGTH; // matches SneakySnake_bit signature
    const int k_edit_threshold = 0;
    const int k_kmer_size      = 0;

    return SneakySnake_bit(k_length,
                           read_seq,
                           ref_seq,
                           k_edit_threshold,
                           k_kmer_size);
}