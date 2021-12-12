import numpy as np
from matplotlib import pyplot as plt
from matplotlib.pyplot import figure
#sampling frequency

start_time = 0
end_time = 1
sample_rate = 44100
time = np.arange(start_time, end_time, 1/sample_rate)
theta = 0
frequency = 400
amplitude = 1
sinewave = amplitude * np.sin(2 * np.pi * frequency * time + theta)
figure(figsize=(20, 6), dpi=80)
plt.plot(sinewave)
plt.show()