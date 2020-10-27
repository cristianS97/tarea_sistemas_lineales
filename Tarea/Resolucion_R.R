# Ejercicio 1
A = rbind(
  c(10, 2, -1, 1, 0, 10),
  c(-1, -3, 0, 0, -1, 5),
  c(0, -1, 3, -1, 0, 0),
  c(17, 1, 0, 3, 5, -15),
  c(0,-10, 0, -5, 3, 0),
  c(-3, 1, 1, 1, -2, 2)
)
b = c(0, 5, 5, 4, -21, 11)
AB = cbind(A, b)

n.variables = 6

AB

qr(A)$rank == qr(AB)$rank
# Resultado TRUE
qr(A)$rank == n.variables
# Resultado TRUE

### Se trata de un sistema compatible determinado, puesto que el rango
# de la matriz ampliada es igual al de la matriz de coeficientes
# y a su vez, es igual al número de variables

# Resolución del sistema
library(matlib)
Solve(A, b)

#############################################################

# Ejercicio 2

A = rbind(
  c(-2, 2, -1, 1, 0, 4, 0),
  c(-1, -3, 0, 0, -1, 5, -2),
  c(0, -1, 3, -1, 0, 0, 0),
  c(0, 1, 0, 3, -2, 1, 4),
  c(0, -3, 0, -5, 3, 0, -2),
  c(-3, 1, 1, 1, -2, 2, 1)
)
b = c(5, 3, 5, 0, 5, 0)
AB = cbind(A, b)

n.variables = 7

AB

qr(A)$rank == qr(AB)$rank
# Resultado TRUE
qr(A)$rank == n.variables
# Resultado FALSE

### Se trata de un sistema compatible indeterminado, puesto que el rango
# de la matriz ampliada es igual al de la matriz de coeficientes
# pero el rango es distinto al número de variable

# Resolución del sistema
library(matlib)
Solve(A, b, fractions=TRUE)

#############################################################

# Ejercicio 3

A = rbind(
  c(10, 2, -1, 1, 0, 10),
  c(-1, -3, 0, 0, -1, 5),
  c(9, -1, -1, 1, -1, 15),
  c(17, 1, 0, 3, 5, -15),
  c(0, -10, 0, -5, 3, 0),
  c(-3, 1, 1, 1, -2, 2)
)
b = c(0, 5, 0, 4, -21, 11)
AB = cbind(A, b)

n.variables = 6

AB

qr(A)$rank
qr(AB)$rank

qr(A)$rank == qr(AB)$rank
# Resultado FALSE
qr(A)$rank == n.variables
# Resultado FALSE

### Se trata de un sistema incompatible, puesto que el rango
# de la matriz ampliada es distinto al de la matriz de coeficientes
# y además, el rango de la matriz de coeficientes es distinto al
# número de variables

# Comprobamos su incompatibilidad con la función Solve
library(matlib)
Solve(A, b, fractions=TRUE)

#############################################################

# Ejercicio 4-a

A = rbind(c(-6, -3), c(0, -3))
B = rbind(c(-1, 0), c(4, -2))
I = diag(1, nrow=2, ncol=2)

M = A + 5 * I
N = -3 * B

X = solve(M, N)
X

A %*% X + 3 * B == -5 * X

# Ejercicio 4-b

A = rbind(c(1, 2), c(0, 2))
B = rbind(c(2, -1), c(-1, 5))
C = rbind(c(2, 6), c(-1, -0.5))
I = diag(1, nrow=2, ncol=2)

M = A %*% C + I
N = 10 * I - 3 * B

X = solve(M, N)
X

A %*% C %*% X + 3 * B == 10 * I - X





