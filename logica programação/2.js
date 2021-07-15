// O custo de um carro novo ao consumidor é a soma do custo de fábrica com a porcentagem do distribuidor e dos
// impostos (aplicados ao custo de fábrica). Supondo que o percentual do distribuidor seja de 23,50% e os impostos de 43,15%,
// escrever um algoritmo para ler o custo de fábrica de um carro, calcular e escrever o custo final ao consumidor.

// o algoritimo recebe o custo de fábrica, o percentual do distribuidor e o percentual de imposto como parâmetros para os cálculos
function custoFinal(custoFabrica, porcentagemDistribuidor, impostos) {

    // calculando os valores dos impostos e do distribuidor respectivamente
    let valorImpostos = custoFabrica * (impostos / 100)
    let valorDistribuidor = custoFabrica * (porcentagemDistribuidor / 100)

    // somando os valores dos impostos e do distribuidor ao custo de fabrica para obter o custo final ao consumidor
    let custoConsumidor = custoFabrica + valorImpostos + valorDistribuidor

    // formatando os valores para moeda brasileira (reais)
    custoConsumidor = custoConsumidor.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' })

    // apresentando o resultado
    console.log(`O custo final ao consumidor é de ${custoConsumidor}`)
}

// executando o algoritimo
custoFinal(20000, 23.5, 43,15)