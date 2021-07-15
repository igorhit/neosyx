// A série de Fibonacci é formada pela sequência: 0, 1, 1, 2, 3, 5, 8, 13, 21.... 
// Construa um algoritmo que gere e mostre a série até o vigésimo termo.

// o algoritimo recebe como parâmetro a quantidade exigida de termos
function fibonacci(qtdTermos) {

    // declarando o compartimento que irá conter a sequência completa
    let sequenciaFibonacci = []
    
    // declarando os termos iniciais da sequência
    let a = 0
    let b = 1
    let c = b

    // estrutura de repetição para executar a lógica da sequência até que 
    // a quantidade de termos exigida seja atingida
    for(let i = 0; i < qtdTermos; i++) {
        // adicionando termos ao compartimento
        sequenciaFibonacci.push(c)
        // aplicando a lógica da sequência
        c = a + b
        // alterando os termos para que a lógica possa ser reaplicada
        a = b
        b = c
    }
    // apresentando o compartimento com resultado final
    console.log(sequenciaFibonacci)
}

// executando o algoritimo
fibonacci(20)