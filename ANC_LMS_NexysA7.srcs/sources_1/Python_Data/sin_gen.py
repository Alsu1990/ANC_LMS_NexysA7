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
amp = 0.8
sinewave = amp * np.sin(2 * np.pi * frequency * time + theta)
noise = np.random.normal(0, 0.05, len(time))
new_sin = sinewave + noise

f = open("SamplesFixed.txt", "w")
for k in new_sin:
    j = "{:16.15f}".format(k)
    f.write(str(j))
    f.write("\n")
f.close()

f = open("SamplesFixedX0_5.txt", "w")
for k in new_sin:
    j = "{:16.15f}".format(k*0.5)
    f.write(str(j))
    f.write("\n")
f.close()


X = np.fft.fft(new_sin)
N = len(X)
n = np.arange(N)
T = N/sample_rate
freq = n/T 

f = open("SamplesFixedFFT.txt", "w")
for k in X:
    # j = "{:16.15f}".format(k)
    f.write(str(j))
    f.write("\n")
f.close()

plt.figure(figsize = (12, 6))
plt.subplot(121)
Xdb = 10 * np.log10(np.abs(X))
plt.stem(freq, Xdb, 'b', \
         markerfmt=" ", basefmt="-b")
plt.xlabel('Freq (Hz)')
plt.ylabel('FFT Amplitude |DB|')
plt.xlim(0, 1000)

plt.subplot(122)
plt.plot(time, np.fft.ifft(X), 'r')
plt.xlabel('Time (s)')
plt.ylabel('Amplitude')
plt.tight_layout()
plt.show()