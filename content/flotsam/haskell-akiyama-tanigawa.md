---
title: "Haskell Akiyama–Tanigawa"
date: 2021-05-01T17:03:32+01:00
showDate: true
draft: false
---

I am a big fan of the Akiyama–Tanigawa algorithm[^1][^2] for computing [Bernoulli numbers](https://en.wikipedia.org/wiki/Bernoulli_number). 
It works by generating a structure resembling Pascal's triangle, with rows whose entries are determined by a simple calculation on the two entries above them, from which we can read off the sequence of Bernoulli numbers. 

What I like about this algorithm, besides its simplicity and elegance, is that it admits a concordantly simple and elgant implementation in Haskell using infinite data structures.

Let's describe the structure the algorithm emerges from. Like Pascals's triangle it has infinitely many rows. Unlike Pascal's triangle, its rows are also infinite. Specifically, it is a rightwards- and downwards-infinite grid of rational numbers generated as follows:
1. The first row consists of the reciprocals of the positive integers.
2. In any subsequent row, the n-th element is given by the previous row's (n+1)-st element subtracted from its n-th element, all multiplied by n.

The first entries of each row—the leftmost vertical column—are the Bernoulli numbers.

If you want to generate the first n Bernoulli numbers, then you can start with just n entries in the initial row. This is illustrated below for n=5; our first five Bernoulli numbers are 1, 1/2, 1/6, 0, -1/30, as we expect.
```
  1    1/2   1/3   1/4   1/5
  ↓  ↙  ↓  ↙  ↓  ↙  ↓  ↙  
 1/2   1/3   1/4   1/5
  ↓  ↙  ↓  ↙  ↓  ↙  
 1/6   1/6   3/20  
  ↓  ↙  ↓  ↙ 
  0    1/30  
  ↓  ↙    
-1/30   

-- for example, the third element of the third row is
-- 3*(1/4 - 1/5) = 3/20
```

However, Haskell's infinite data structures and lazy evaluation lets us define the whole bi-infinte array—hence all the Bernoulli numbers—in one go.[^3] Let's see how this is done.[^4][^5]

First we import `Data.Ratio` to handle rationals (representing p/q with `p % q`) and initialize an infinite array of the reciprocals of natural numbers:

```
import Data.Ratio

recips :: [Rational]
recips = map (\n -> 1 % n) [1..]
```

Next we write our row update rule and iterate it infinitely on the initial row to get the bi-infinite grid:

```
nextRow :: [Rational] -> [Rational]
nextRow xs = zipWith (*) [1..] (zipWith (-) xs (drop 1 xs))

bernoulliGrid :: [[Rational]]
bernoulliGrid = iterate nextRow recips
```

Taking the first entries of each row in the grid gives the series of Bernoulli numbers:

```
bernoulliNums :: [Rational]
bernoulliNums = map head bernoulliGrid
```

Now we can get as many Bernoulli numbers as we want with `take <num> bernoulliNums`. And indeed we have:
```
Prelude Data.Ratio> take 5 bernoulliNums 
[1 % 1,1 % 2,1 % 6,0 % 1,(-1) % 30]
```

Neat!

[^1]: Akiyama, S., Tanigawa, Y. Multiple Zeta Values at Non-Positive Integers. *The Ramanujan Journal* **5**, 327–351 (2001).
[doi](https://doi.org/10.1023/A:1013981102941)

[^2]: Kaneko, M.  The Akiyama-Tanigawa algorithm for Bernoulli numbers. *Journal of Integer Sequences* **3**, Article 00.2.9 (2000).
[journal webpage](https://cs.uwaterloo.ca/journals/JIS/VOL3/KANEKO/AT-kaneko.html)

[^3]: Of course we could just write a recursive `bernoulliNum` function and define `bernoulliNums = map bernoulliNum [1..]`, but that would be inelegant (and inefficient).

[^4]: This is a little more verbose than it needs to be for the purpose of exposition. This [github gist](https://gist.github.com/tkmharris/00e10d6341d3f9ce4f343302a51bb129) has a condensed version. 

[^5]: Thanks to Owen Stephens for some Haskell pointers and a more concise version of `nextRow` than my original.