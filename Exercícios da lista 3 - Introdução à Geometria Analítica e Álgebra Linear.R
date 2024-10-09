# Lista de exercícios - Semana 3 - Introdução à Geometria Analítica e Álgebra Linear

#1) Encontre o vetor v paralelo ao vetor u = (2, −1, 3) tal que v.u = −42.

# Definir o vetor u
vetor_u <- c(2, -1, 3)
vetor_u

# Calcular o produto escalar de u com ele mesmo
produto_u <- sum(vetor_u * vetor_u)

# Definir o produto escalar desejado
produto_desejado <- -42

# Calcular o valor do escalar k
k <- produto_desejado / produto_u

# Calcular o vetor v
vetor_v <- k * vetor_u

# Exibir o resultado
vetor_v

# 2) Dados A(−1, 0, 2), B(−4, 1, 1), C(0, 1, 3), encontre o vetor x tal que 2x -AB = x + (BC.AB).AC

# Definindo os pontos A, B, C

# ponto A
A <- c(-1, 0, 2)
A

# ponto B
B <- c(-4, 1, 1)
B

# ponto C
C <- c(0, 1, 3)
C

# Encontrar os componentes de AB, BC, AC

# componente do vetor AB
AB <- B-A
AB

# componente do vetor BC
BC <- C-B
BC

# componente do vetor AC
AC <- C-A
AC

# Fazendo as multiplicação dos vetores (BC.AB).AC
BC_AB <- sum(BC*AB)
BC_AB

BC_AB_AC <- BC_AB*AC
BC_AB_AC

# Simplificando a equação 2x - AB = x + (BC.AB).AC para -> x = (BC.AB).AC + AB
x <- BC_AB_AC + AB
x

# Fazendo a prova real para ver se está certo
# lado esquerdo da igualdade
doisx <- 2*x
doisx

doisx_AB <- doisx - AB
doisx_AB

# lado direito da igualdade
lado_direito <- x + BC_AB_AC
lado_direito
