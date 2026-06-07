# DIR448 — Smart Contract: Pagamento Condicionado a Clima

![Solidity](https://img.shields.io/badge/Solidity-%5E0.4.21-363636?logo=solidity&logoColor=white)
![Ethereum](https://img.shields.io/badge/Ethereum-EVM-3C3C3D?logo=ethereum&logoColor=white)

## Contexto

Smart Contract desenvolvido ao vivo em aula expositiva da disciplina **Acesso à Justiça** na UFV (Universidade Federal de Viçosa), como exemplo de aplicação prática de tecnologia blockchain no direito.

O contrato simula uma relação jurídica entre um contratante e uma banda musical, onde o pagamento pelos serviços é condicionado à ausência de chuva — ou seja, o evento precisa de condição climática favorável para que o contrato se torne eficaz e o pagamento seja liberado.

O objetivo é demonstrar como contratos inteligentes podem automatizar relações jurídicas de baixa complexidade, reduzindo a dependência do judiciário para resolução de disputas simples e tornando o cumprimento das obrigações mais célere e objetivo.

## O que o contrato faz

- Define dois atores: `Contratante` e `Banda`
- A execução das funções é condicionada à variável `chuva` (condição climática)
- Se a condição for satisfeita, o contrato avança; caso contrário, permanece bloqueado
- Simula integração com dados externos de previsão do tempo (ex: arquivo JSON exportado por software meteorológico)

## Tech Stack

| Tecnologia | Uso |
|---|---|
| Solidity `^0.4.21` | Linguagem do contrato inteligente |
| Ethereum EVM | Plataforma de execução |
| Remix IDE | Ambiente recomendado para deploy e testes |

## Como rodar

**Usando Remix IDE (recomendado):**

1. Acesse [remix.ethereum.org](https://remix.ethereum.org)
2. Cole o conteúdo de `contract.sol` no editor
3. Compile com Solidity `0.4.x` ou `0.5.x`
4. Faça deploy na rede de testes (JavaScript VM)
5. Para simular a condição climática, ajuste a variável `chuva` antes de chamar as funções

**Localmente com Truffle:**

```bash
npm install -g truffle
truffle develop
compile
migrate
```

## Próximos passos

- Interface web para interação com o contrato
- Integração com oracle de dados climáticos (ex: Chainlink)
- Otimização da estrutura do contrato

Contribuições são bem-vindas.

---

<sub>Desenvolvido durante a disciplina DIR448 · UFV</sub>
