---
name: base-cor
description: Sistema de cor para interface: paleta em OKLCH, primitivos → semânticos, uma cor = um sentido, proporção 60-30-10, modo escuro de verdade e leitura de cor por setor com cautela. Use ao montar ou revisar paleta, tema escuro, cor de marca, cores de estado, gráficos, ou quando pedirem "que cores usar", "paleta", "dark mode", "a cor não combina".
---

# Cor · Cada cor diz uma coisa só

Fontes: *Refactoring UI* (Wathan e Schoger); Material Design 3 (color roles, tonal palettes); Apple HIG (Color, Dark Mode); CSS Color Module Level 4 (OKLCH); WCAG 2.2 para contraste (ver `base-acessibilidade`). A escola escolhe o clima. Esta skill garante que a cor funcione.

## Uma cor = um sentido

Antes de escolher tom, escreva o que cada cor **significa**. Se a mesma cor faz duas coisas, uma delas está errada.

| Papel | Uso | Regra |
|---|---|---|
| **Marca / ação** | Botão principal, link, foco | Um por tela, só em ação. Não é enfeite. |
| **Neutros** | Fundo, superfície, texto, borda | 80–90% da tela. 8–11 tons de uma rampa. |
| **Sucesso** | Concluído, pago, positivo | Verde. Só estado. |
| **Atenção** | Pendente, prazo perto | Âmbar. Pouco uso. |
| **Erro / perigo** | Erro, atraso, apagar | Vermelho. Sempre com texto e ícone. |
| **Informação** | Dica neutra | Opcional. Muitos produtos dispensam. |

## Proporção 60-30-10

- 60% neutro dominante (fundo), 30% neutro secundário ou cor de apoio (superfícies, seções), 10% acento (ação e destaque).
- Em produto (app), o acento costuma ficar em **5% ou menos**. Se tudo é colorido, nada se destaca (Von Restorff).

## Construa em OKLCH

OKLCH (L = luminosidade percebida, C = croma, H = matiz) mantém a luminosidade percebida estável quando você muda o matiz. Isso deixa as rampas uniformes e o contraste previsível.

```css
:root {
  /* Rampa neutra: mesmo H, croma baixo, L de 0.98 a 0.15 */
  --gray-50:  oklch(0.98 0.003 260);
  --gray-100: oklch(0.95 0.004 260);
  --gray-300: oklch(0.85 0.006 260);
  --gray-500: oklch(0.62 0.010 260);
  --gray-700: oklch(0.42 0.012 260);
  --gray-900: oklch(0.21 0.012 260);
  /* Marca: mesmo L dos degraus, só muda H e C */
  --brand-500: oklch(0.60 0.18 150);
  --brand-600: oklch(0.52 0.17 150);
}
```

- Neutro "vivo": dê 0,003–0,015 de croma puxado para o matiz da marca (cinza frio para tech, quente para comida e bem-estar). Cinza puro (#808080) parece morto.
- Rampa de 10–11 degraus por cor (50 a 950), como Tailwind e Material tonal palette.
- Gere sempre o par de contraste: confira cada texto sobre cada fundo (≥ 4,5:1).

## Primitivos → semânticos

O componente nunca usa `--green-600`. Usa `--color-success`. Assim trocar de tema ou de marca muda uma camada só (ver `base-tokens`).

```css
:root {
  --bg: var(--gray-50);  --surface: #fff;  --text: var(--gray-900);
  --text-mute: var(--gray-700); --border: var(--gray-300);
  --action: var(--brand-600); --on-action: #fff;
  --danger: oklch(0.55 0.20 25); --success: oklch(0.58 0.15 150);
}
```

## Modo escuro de verdade

Não é inverter. É outra paleta com os mesmos papéis.

- Fundo não é #000: use L 0,14–0,20 (#121212 a #1C1C1E). Preto puro só em OLED quando a marca pede.
- **Elevação = mais claro**, não sombra: cada nível de superfície sobe ~0,03–0,05 de L (Material 3, Apple HIG).
- Dessature as cores de acento (croma −20 a −30%) e suba a luminosidade, ou elas vibram no escuro.
- Texto branco a 87–92% de opacidade, não 100%. Texto secundário ainda com 4,5:1.
- Teste os dois temas com o mesmo cuidado. `prefers-color-scheme` define o padrão; a pessoa pode escolher.

## Cor por setor (com cautela)

Associações culturais existem, mas mudam por país e categoria. Use como ponto de partida, não como regra, e fuja do clichê quando quiser se destacar.

| Setor | Tendência comum | Clichê a evitar ou subverter |
|---|---|---|
| Finanças, seguros | Azul, verde, neutros escuros | Azul-bancão genérico |
| Saúde | Azul claro, verde-água, branco | Hospitalar frio |
| Comida | Vermelho, laranja, amarelo, terrosos | Vermelho-fast-food em tudo |
| Bem-estar | Verdes suaves, areia, terracota | Bege sem contraste |
| Luxo | Preto, branco, creme, um metálico | Dourado em gradiente |
| Tech / dev | Neutros escuros, um acento elétrico | Roxo-gradiente de IA |
| Infantil | Primárias saturadas | Arco-íris sem hierarquia |
| Esporte | Alto contraste, cor de equipe, neon | |

No Brasil, verde e amarelo juntos leem como seleção ou governo.

## Gráficos

- Categorias: até 6–8 cores distinguíveis também em daltonismo (paletas tipo Okabe-Ito). Rotule direto na série.
- Sequencial: uma cor, de claro a escuro. Divergente: duas cores com neutro no meio.
- Destaque uma série e deixe o resto em cinza.

## Checklist

1. Cada cor tem um sentido escrito, e nenhuma faz duas coisas?
2. Acento em ≤ 10% da tela e só em ação?
3. Componentes usam tokens semânticos, não primitivos?
4. Rampas uniformes (OKLCH), neutros com leve matiz?
5. Todos os pares de texto passam 4,5:1 nos dois temas?
6. Modo escuro com elevação por luminosidade e acento dessaturado?
7. Estado nunca só por cor?
