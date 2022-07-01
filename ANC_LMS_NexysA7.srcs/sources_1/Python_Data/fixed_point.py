def get_bin(x, n=0):
    """
    Get the binary representation of x.

    Parameters
    ----------
    x : int
    n : int
        Minimum number of digits. If x needs less digits in binary, the rest
        is filled with zeros.

    Returns
    -------
    str
    """
    return format(x, 'b').zfill(n)
    
def twos_comp(val, bits):
    """compute the 2's complement of int value val"""
    if (val & (1 << (bits - 1))) != 0: # if sign bit is set e.g., 8bit: 128-255
        val = val - (1 << bits)        # compute negative value
    return val    


def str_to_sign_int(string):
    bit = 16
    signed_int = 0

    for i in range (1, bit):
        if (string[i]== '1'):
            signed_int += 2**(bit-1-i)
    if (string[0] == '0'):
        return signed_int
    else:
        return signed_int -(2**(bit-1))

f = open("sources_1\Python_Data\SamplesFixed_bin.txt", "r",)
samples = []
#pregenerated waveform (converted to 16 signed int)
for lines in f:
    samples.append(str_to_sign_int(lines))
f.close()


#NLMS algo test with predefined samples
from utils import NLMS as nlms

number_of_samples = 1000
dummy_system = [1024, 2048, 4096, 8192, 16384]
desired_samples = [0] * number_of_samples
filter_order = len(dummy_system)

#generating reference input
for x in range(number_of_samples):
    for y in range(filter_order):
        if (x - y) >= 0:
            desired_samples[x] += (samples[x - y] * dummy_system[y]) >> 16

output_weights = nlms(input_samples=samples[0:number_of_samples], desired_samples=desired_samples, filter_order=filter_order, mu=0.2)
print(output_weights)