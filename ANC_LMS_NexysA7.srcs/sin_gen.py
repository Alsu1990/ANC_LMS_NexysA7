import numpy as np
from matplotlib import pyplot as plt
from bitstring import Bits

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



#sampling frequency

start_time = 0
end_time = 1
sample_rate = 44100
time = np.arange(start_time, end_time, 1/sample_rate)
theta = 0
frequency = 400
amplitude = 32767
sinewave = amplitude * np.sin(2 * np.pi * frequency * time + theta)

f = open("Samples.txt", "w")
for k in sinewave:
    f.write(str(Bits(int = int(k), length = 16)))
    f.write("\n")
