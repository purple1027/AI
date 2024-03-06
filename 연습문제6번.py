import numpy as np
import matplotlib.pyplot as plt
import math


x=np.linspace(-6, 6, num=100)
sigma=1.0

var=sigma*sigma

y=np.exp(-(x**2)/ (2.0*var))/math.sqrt(2*np.pi*var)

plt.plot(x,y)
plt.show()


