# Dados para o cálculo
valor_investido <- 1000.00  # Valor do investimento
taxa_cdi_anual <- 10.65 / 100  # CDI anual (10,65%)
proporcao_cdi <- 100.25 / 100  # Proporção do CDI (100,25%)
dias <- 16  # Período de dias
dias_ano <- 252  # Base de dias úteis no ano para CDI

# Cálculo da taxa CDI diária
taxa_cdi_diaria = (1 + taxa_cdi_anual) ^ (1 / dias_ano) - 1

# Cálculo do rendimento bruto
rendimento_bruto = valor_investido * ((1 + (taxa_cdi_diaria * proporcao_cdi)) ** dias - 1)

rendimento_bruto

# imposto de renda
# prazo de aplicação  #Aliquota  de Imposto de Renda
# até 180 dias         22,5%
# de 181 até 360 dias  20%
# de 361 até 720 dias  17,5%
# acima de 720 dias    15%

rendimento_liquido <- rendimento_bruto - (rendimento_bruto*0.225)
rendimento_liquido

