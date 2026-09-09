# Atividade Prática: Conversor de Moeda (Interfaces)

Este projeto demonstra o uso de interfaces para promover o desacoplamento de componentes em um sistema.

## Objetivo

Demonstrar como o componente consumidor (`CaixaTroca`) utiliza diferentes implementações da interface (`ConversorMoeda`) sem depender dos detalhes de implementação concreta de cada conversor.

## Estrutura do Sistema

* `ConversorMoeda` (Interface): Define o contrato do sistema com o método `converter(valor)`.
* `ConversorRealParaEuro`, `ConversorRealParaDolar` e `ConversorRealParaLibra` (Implementações): Classes concretas que implementam a interface `ConversorMoeda`.
* `CaixaTroca` (Componente Consumidor): Depende apenas da interface `ConversorMoeda` via injeção de dependência pelo construtor.
* `exemplo_uso.rb` (Main): Instancia os objetos e injeta as implementações no componente consumidor.

## Funcionamento

Como a classe `CaixaTroca` depende unicamente da abstração fornecida pela interface `ConversorMoeda`, novas implementações de conversores podem ser adicionadas ou alternadas na classe principal sem a necessidade de alterar o código da classe `CaixaTroca`.

## Justificativa Teórica da Interface em Ruby

Embora a linguagem Ruby utilize por padrão, o conceito de polimorfismo implícito através de Duck Typing, este projeto simula de forma explícita o comportamento de Interfaces Formais comuns em linguagens estáticas (como Java ou C#). Para alcançar o desacoplamento exigido e blindar a arquitetura contra violações do contrato, foi utilizada a exceção nativa `NotImplementedError`. Isso garante o cumprimento rigoroso dos requisitos:

1. **Garantia de Contrato (`ConversorMoeda`):** A classe base atua como uma interface abstrata. Ao declarar o método `converter(valor)` disparando um erro de implementação, define-se um contrato obrigatório em tempo de execução.
2. **Isolamento de Regras:** As classes `ConversorRealParaEuro`, `ConversorRealParaDolar` e `ConversorRealParaLibra` encapsulam suas próprias regras de negócio de maneira isolada.
3. **Inversão de Dependência:** O componente `CaixaTroca` depende exclusivamente da abstração. Ele recebe qualquer objeto que atenda à assinatura estabelecida pelo contrato via injeção de dependência, operando sem conhecer as fórmulas internas de cada moeda.

## Como Executar

1. Clone o repositório.
2. Abra o projeto em uma IDE Ruby (ex: RubyMine).
3. Execute o arquivo `exemplo_uso.rb`.

```bash
ruby exemplo_uso.rb
```

## Autor
Ana Lucia Weber Cattani - RA: 2596610

## Atividade

Arquitetura de Software - Modularidade - Atividade 01
