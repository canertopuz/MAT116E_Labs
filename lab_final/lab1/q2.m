clear;
clc;

p = 800;
r = 0.15;
l = 50000;

n = log(p / (p - r*l/12)) / (12 * log(1 + r/12));
n = 12 * n;

display(n);