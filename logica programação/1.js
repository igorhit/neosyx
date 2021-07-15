// Escreva um algoritmo para ler o valor do salário mensal atual de um funcionário e o percentual de reajuste. Calcular e
// escrever o valor do novo salário. Após o cálculo do novo salário, deverá ser apresentado os seguintes valores.
// a. Valor do salário
// b. Valor do NOVO salário
// c. Diferença entre o salário e o NOVO salário

// o algoritimo recebe o salario atual e o percentual de reajuste como parâmetros para os cálculos
function calcularSalario(salarioAtual, percentualDeReajuste) {

    // convertendo o percentual para um valor multiplicável diretamente
    let percentual = percentualDeReajuste / 100
    // somando o percentual calculado sobre o salario atual para obter o novo salário
    let novoSalario = salarioAtual + (salarioAtual * percentual)
    // deduzindo o salario atual do novo salario para obter a diferença
    let diferencaEntreSalarios = novoSalario - salarioAtual

    // formatando os valores para moeda brasileira (reais)
    salarioAtual = salarioAtual.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' })
    novoSalario = novoSalario.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' })
    diferencaEntreSalarios = diferencaEntreSalarios.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' })
    
    // apresentando os resultados
    console.log(`a. Valor do salário = ${salarioAtual}`)
    console.log(`b. Valor do NOVO salário com ${percentualDeReajuste}% de aumento = ${novoSalario}`)
    console.log(`c. Diferença entre o salário e o NOVO salário = ${diferencaEntreSalarios}`)
    
}

// executando o algoritimo
calcularSalario(1000.10, 20.5)