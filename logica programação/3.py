# Ler o salário fixo e o valor das vendas (deverá ser lido em um loop, caso o valor seja 0, deverá encerrar o loop) efetuadas
# pelo vendedor de uma empresa. Sabendo-se que ele recebe uma comissão de 3% sobre o total das vendas até R$ 1.500,00
# mais 5% sobre o que ultrapassar este valor, calcular e escrever o seu salário total.

# Optei pelo código em Python pela facilidade de visualização no output devido a função input().

# variável onde será armazenada o salario fixo inserido pelo usuário
salario_fixo = float(input('Digite o salário: R$'))
# meta_vendas = float(input('Digite a meta de vendas: R$')) -- opção caso a meta não fosse fixa em R$1.500,00

# declarando o compartimento que irá armazenar todas as vendas
lista_vendas = []
# inicializando a variável que irá somar todas as vendas para o total final
total_vendas = 0

# iniciando o loop para leitura das vendas, que será encerrado caso o usuário digite 0 ou um valor negativo
while True:
    venda = float(input('Digite o valor da venda (digite 0 para encerrar): R$'))
    if venda <= 0:
        break
    # adicionando o valor inserido ao compartimento
    lista_vendas.append(venda)
# somando todos os valores inseridos no compartimento
for venda in lista_vendas:
    total_vendas += venda


# função que irá calcular o salário final após as comissões serem adicinadas ao salário fixo.
# recebe o salario fixo, o valor total das vendas e a meta de R$1.500,00 
# (que poderia também ser inserida com um valor escolhido pelo usuário simplesmente adicionando mais uma linha de input())
def calculo_salario(salario_fixo, total_vendas, meta_vendas=1500):
    comissao_padrao = total_vendas * 0.03
    comissao_bonus = (total_vendas - meta_vendas) * 0.05

    if total_vendas <= meta_vendas:
        comissao_padrao = salario_fixo + comissao_padrao
    else:
        comissao_padrao = meta_vendas * 0.03
        comissao_padrao = salario_fixo + comissao_padrao + comissao_bonus

    print(f'O salario fixo é de ${salario_fixo:.2f}.')
    print(f'O salário final do vendedor é de ${comissao_padrao:.2f}.')

# executando a função
calculo_salario(salario_fixo, total_vendas)
