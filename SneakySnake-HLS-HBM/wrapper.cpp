#include "hls_stream.h"      
#include "hw/pipeline.h"     
                            
#include <fstream>
#include <string>

/* ASCII (A,C,G,T) → 2-bit packed word (A=00 C=01 G=10 T=11) */
static d_bit_in_type pack_seq(const std::string &s)
{
    d_bit_in_type w = 0;
    const unsigned n = (s.size() < 128) ? s.size() : 128;   // 128 bases → 256 bits
    for (unsigned i = 0; i < n; ++i) {
        ap_uint<2> code = (s[i] == 'C' || s[i] == 'c') ? 1 :
                          (s[i] == 'G' || s[i] == 'g') ? 2 :
                          (s[i] == 'T' || s[i] == 't') ? 3 : 0;
        w |= d_bit_in_type(code) << (2 * i);
    }
    return w;
}

int main()
{
    std::ifstream in("../Datasets/ERR240727_1_E2_30000Pairs.txt");
    if (!in) return 1;                        // stop if file missing

    std::string read_ascii, ref_ascii;
    volatile int sink = 0;                    // prevents optimisation

    while (in >> read_ascii >> ref_ascii) {
        d_bit_in_type read_word = pack_seq(read_ascii);
        d_bit_in_type ref_word  = pack_seq(ref_ascii);

        sink = SneakySnake_bit(LENGTH,       // ReadLength
                               read_word,
                               ref_word,
                               0,            // EditThreshold (unused)
                               0);           // KmerSize      (unused)
    }
    return 0;
}
