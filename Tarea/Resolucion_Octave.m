# Pregunta 1
A = [
  10 2 -1 1 0 10;
  -1 -3 0 0 -1 5;
  0 -1 3 -1 0 0;
  17 1 0 3 5 -15;
  0 -10 0 -5 3 0;
  -3 1 1 1 -2 2
];
b = [0; 5; 5; 4; -21; 11];
AB = [A b];

rank(A) == rank(AB)
rank(A) == 6

x = round(linsolve(A, b))

# Pregunta 2
A = [
  -2 2 -1 1 0 4 0;
  -1 -3 0 0 -1 5 -2;
  0 -1 3 -1 0 0 0;
  0 1 0 3 -2 1 4;
  0 -3 0 -5 3 0 -2;
  -3 1 1 1 -2 2 1
];
b = [5; 3; 5; 0; 5; 0]
AB = [A b]

rank(A) == rank(AB)
rank(A) == 7

rref(AB)

# Pregunta 3
A = [
  10 2 -1 1 0 10;
  -1 -3 0 0 -1 5;
  9 -1 -1 1 -1 15;
  17 1 0 3 5 -15;
  0 -10 0 -5 3 0;
  -3 1 1 1 -2 2
];
b = [0; 5; 0; 4; -21; 11];
AB = [A b];

rank(A) == rank(AB)
rank(A) == 6
rank(A)
rank(AB)

# Pregunta 4 - a
A = [
  -6 -3;
  0 -3
];
B = [
  -1 0;
  4 -2
];
I = [
  1 0;
  0 1
];

M = A + 5 * I;
N = -3 * B;

X = linsolve(M, N)

A * X + 3 * B == -5 * X

# Pregunta 4 - b
A = [
  1 2;
  0 2
];
B = [
  2 -1;
  -1 5
];
C = [
  2 6;
  -1 -0.5
];
I = [
  1 0;
  0 1
];

M = A * C + I
N = 10 * I - 3 * B

X = linsolve(M, N)

A * C * X + 3 * B == 10 * I - X











