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

## Como Executar

1. Clone o repositório.
2. Abra o projeto em uma IDE Ruby (ex: RubyMine).
3. Execute o arquivo `exemplo_uso.rb`.

```bash
ruby exemplo_uso.rb
```

## Atividade

Arquitetura de Software - Modularidade - Atividade 01
