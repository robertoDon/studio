# Formato do DESIGN.md

O `DESIGN.md` mora na raiz do projeto. É o contrato visual: quem for mexer em tela lê primeiro. Curto (1–3 páginas), decidido, com números. Se uma regra não cabe em uma linha, provavelmente não é regra.

Se o projeto já tem régua de casa ou documento de design (ex.: `design/README.md`, uma skill `*-acabamento`), o DESIGN.md **aponta para ele** e registra só o que a direção acrescenta. Não duplique valores: um lugar manda.

## Modelo

```markdown
# DESIGN · <Produto>

> <A cara em uma frase. Ex.: "Suíça com calor escandinavo: informação clara, sem frieza.">

Atualizado em <data> · por <quem decidiu> · plugin Art Director <versão>

## 1. Diagnóstico

- **O produto mostra:** <assunto principal da tela>
- **Público:** <idade · contexto de uso · nível técnico · B2B/B2C>
- **Imagem desejada:** <até 2 adjetivos>
- **Superfícies:** <app web · app mobile · landing · site · e-commerce · slides>
- **Concorrentes e como parecem:** <2–3, uma linha cada>
- **Rota:** segura | ousada, porque <motivo>

## 2. Direção

| Papel | Escola | Por quê | Onde aparece |
|---|---|---|---|
| Principal | escola-<x> | <porque público/setor/imagem> | grid, tipo, forma |
| Tempero | escola-<y> ou tendencia-<z> | <porque> | <hero, vazio, acento...> |
| Base | base-*, superficie-<...>, anti-generico | sempre | tudo |
| Casa | <skill de acabamento do projeto, se houver> | manda sobre as escolas | tudo |

**Referências e o que tiramos de cada uma:**
- <referência 1>: <o que tiramos>
- <referência 2>: <o que tiramos>

## 3. Tokens

Onde vivem no código: <arquivo, ex.: src/styles/tokens.css>.

| Grupo | Valores |
|---|---|
| Tipo | Display: <fonte peso>. Texto: <fonte>. Mono: <fonte ou —>. Degraus: <ex.: 12/16, 16/22, 24/28, 32/36>. Até <n> por tela. |
| Cor | <nome = hex = sentido>, um por linha. Ex.: verde #3FD07F = ação e avanço. |
| Espaço | <4, 8, 12, 16, 24...> |
| Raio | <ex.: 8 controle, 16 card, pílula botão> |
| Sombra | <ex.: 0 1px 2px rgba(0,0,0,.06) + borda 1px> |
| Ícones | <conjunto, tamanho, traço> |
| Movimento | toque ≤ <n> ms · revelar ≤ <n> ms · cena ≤ <n> s · curva <ease-out> |

## 4. Regras por superfície

- **App web:** <3–5 regras>
- **App mobile:** <3–5 regras>
- **Landing:** <3–5 regras; pode ir mais longe na escola>
- **Site:** <...>
- **Slides:** <moldes usados, fonte do título, como o acento marca o dado>

## 5. Proibido

- <o que não pode acontecer, vindo do briefing: "sem mascote", "sem azul", "nada de gradiente roxo"...>

## 6. Decisões em aberto

- <o que ficou para o dono decidir, com as opções>

## 7. Histórico

- <data> · <o que mudou e por quê>
```

## Regras de escrita

- Cada cor tem **um** sentido escrito ao lado.
- Toda escolha da seção 2 tem "por quê".
- Número sempre que der: "raio 16", não "raio médio".
- Proibido é tão importante quanto permitido.
- Mudou algo? Linha no histórico, com data.
