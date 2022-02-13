# Pseudorandom-Number-Linear-Congruential-Generator-Assembly-8086
One of the methods used for producing pseudorandom number in computers is "Linear Congruential Generator".<br/>
In this method the next random number __(X<sub>t+1</sub>)__ is produced using the previous random number __(X<sub>t</sub>)__ using the following formula:<br/>
<p align='center'>
  <img src='https://user-images.githubusercontent.com/49107892/153755038-8794aabc-a50e-429a-a2c7-9f5a5c0b2dad.png' width='300'>
</p>

> Where,<br/>
> * __m__, m &gt 0 is called the "modulus".<br/>
> * __a__, 0 < a < m is called the "multiplier"<br/>
> * __c__, <= c <= m is called the "increment".<br/>
> * __X<sub>0</sub>__, 0 <= X < m is called the "seed".<br/>

## Program Features
This assembly program produces a peudorandom number between __0 - 255__ using "Linear Congruential Generator" method for __m = 8191__, __a = 884__ and __c = 1__. The EXE program reads the value of __X<sub>0</sub>(seed)__ from the __23rd__ offset of the data segment, produces the random number and then stores it back in the data segment.
