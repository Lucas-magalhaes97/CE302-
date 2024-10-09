#Exercício em sala de aula do dia 02/10/2024



#queimadas_q1
queimadas_q1 <- read.csv("/home/lucasmagalhaes/Documentos/Estatística UFPR/Elementos de Programação para Estatística/Dataset_FireWatch/Dataset_FireWatch_Brazil_Q1_2024.csv")
queimadas_q1                        
 
#queimdas_q2
queimadas_q2 <- read.csv("/home/lucasmagalhaes/Documentos/Estatística UFPR/Elementos de Programação para Estatística/Dataset_FireWatch/Dataset_FireWatch_Brazil_Q2_2024.csv")
queimadas_q2                      

#queimdas_q3
queimadas_q3 <- read.csv("/home/lucasmagalhaes/Documentos/Estatística UFPR/Elementos de Programação para Estatística/Dataset_FireWatch/Dataset_FireWatch_Brazil_Q3_2024.csv")
queimadas_q3                      

#exercícios
# 1) Imprima na tela as 9 primeiras observações.
# 2) Imprima as últimas 3 observações.
# 3) Quantas observações temos?
# 4) Quantas variáveis temos?
# 5) Apresente o sumário dos dados.
# 6) Apresente a estrutura dos dados.
# 7) Quantos biomas estão sendo afetados?
# 8) Qual a média de avg_numero_dias_sem_chuva para os estados da região sul e da região norte?

# Juntando os arquivos csv quiemdas_q1, quiemadas_q2 e queimadas_q3 em um só

queimadas_total <- rbind(queimadas_q1, queimadas_q2, queimadas_q3)
queimadas_total

# 1) Imprima na tela as 9 primeiras observações
head(queimadas_total, n=9)

# 2) Imprima as ultimas 9 observações
tail(queimadas_total, n=9)

# 3) Quantas observações temos?
nrow(queimadas_total)

# 4) Quantas variáveis temos?
ncol(queimadas_total)

# 5) Apresente o sumário de dados
summary(queimadas_total)

# 6) Apresente a estrtura de dados
str(queimadas_total)

# 7) Quantos biomas estão sendo afetados?
length(unique(queimadas_total$bioma))

# 8) qual é a média de dias sem chuvas para os estados da região norte e sul
regiao_norte <- c("RONDÔNIA", "AMAZONAS", "AMAPÁ", "RORAIMA", "PARÁ", "TOCANTINS", "ACRE")
media_norte <- mean(subset(queimadas_total, estado%in%regiao_norte)$avg_numero_dias_sem_chuva, na.rm = TRUE)
media_norte

regiao_sul <- c("PARANÁ", "SANTA CATARINA", "RIO GRANDE DO SUL")
media_sul <- mean(subset(queimadas_total, estado%in%regiao_sul)$avg_numero_dias_sem_chuva, na.rm = TRUE)
media_sul

# encontrando a cidade do guto
cidade_guto = subset(queimadas_total, municipio%in%c("BOA VIAGEM"))
cidade_guto
