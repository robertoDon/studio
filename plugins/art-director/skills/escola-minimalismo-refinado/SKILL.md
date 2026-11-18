---
name: escola-minimalismo-refinado
description: Minimalismo refinado (Apple HIG, Dieter Rams). Respiro, um assunto por tela, tipo grande e curto, hierarquia por tamanho e peso, materiais e detalhes impecáveis. Use quando o produto quer parecer premium, simples, confiável e moderno ao mesmo tempo (consumer tech, hardware, apps de produtividade, fintech B2C, saúde digital, SaaS que vende como B2C) ou quando pedirem algo "com cara de Apple", "clean", "premium", "minimalista", "menos é mais", "simples", "elegante".
---

# Minimalismo refinado · Menos, porém melhor

Dieter Rams na Braun (anos 1960–90, "Weniger, aber besser") e Jony Ive na Apple, hoje codificado nas Human Interface Guidelines. Ideia central: tirar até sobrar só o essencial, e então caprichar em cada detalhe que sobrou. Minimalismo não é vazio, é acabamento.

## Quando usar

- **Setores:** eletrônicos, apps de consumo, produtividade, fintech B2C, saúde digital, mobilidade, SaaS com venda self-service, e-commerce de produto único.
- **Público:** amplo, de 20 a 60 anos, que valoriza qualidade e não quer aprender interface.
- **Imagem que passa:** premium, simples, confiável, moderno, "funciona sem pensar".

## Quando não usar

- Produto com muita informação por tela (trading, ERP). Vira scroll infinito; use `escola-utilitaria`.
- Marca que quer parecer divertida, barulhenta ou artesanal.
- Sem produto bonito para mostrar: o minimalismo expõe tudo, inclusive a falta de conteúdo.

## A regra em números

| Grupo | Regra |
|---|---|
| Grid | 12 colunas, conteúdo centrado em largura máxima de 980–1200 px. Texto corrido em no máximo 680 px. Gutter de 24 px. |
| Tipo | Uma família: SF Pro, Inter, Geist, Manrope (livres: Inter, Geist, Manrope). Display 600–700 com tracking −2% a −3%; corpo 400. Escala 1,25 com salto de display (12, 15, 17, 22, 28, 48, 80). Título até 6 palavras. Máximo 3 tamanhos por tela. |
| Cor | Branco #FFFFFF ou cinza-gelo #F5F5F7, texto #1D1D1F, cinza secundário #6E6E73. Um acento (azul #0071E3 ou cor da marca) só em link e ação. Modo escuro com #000 e superfícies #1C1C1E. |
| Forma | Raio 12–20 px em cards, 8 px em controles, pílula em botão. Sombra quase invisível (0 1px 2px rgba(0,0,0,.06)) ou nenhuma. Ícones SF Symbols ou Lucide, traço uniforme. |
| Imagem | Produto real, fotografado em fundo limpo, grande. Nada de ilustração genérica ou stock de gente sorrindo. |
| Espaço | Respiro é o design. Seção ≥ 120 px vertical no desktop, card ≥ 24 px de padding, grid de 8. Um assunto por dobra. |
| Movimento | Suave e físico: ease-out, 150–300 ms em UI, revelar por opacidade + 12 px. Scroll pode revelar produto em cena de até 1,2 s. Respeite o teto do projeto (padrão: toque ≤ 160 ms, revelar ≤ 700 ms, cena ≤ 1,2 s). |

## Por superfície

- **App web / dashboard:** barra lateral discreta, uma ação principal por tela, configurações em lista agrupada estilo iOS Settings. Estado vazio com frase e botão.
- **App mobile:** large title, listas agrupadas inset com raio 12, barra de abas com 3–5 itens, folha (sheet) de baixo em vez de modal. Toque ≥ 44 pt.
- **Landing page:** manchete curta centralizada (48–80 px), subtítulo de uma linha, produto gigante abaixo. Cada seção = uma feature, com uma frase e uma imagem.
- **Site institucional:** navegação global fina (44 px), muito branco, rodapé denso e organizado em colunas.

## Tokens de partida

```css
:root {
  --font-sans: "Inter", -apple-system, "SF Pro Text", system-ui, sans-serif;
  --fs-1: 0.75rem; --fs-2: 0.9375rem; --fs-3: 1.0625rem; --fs-4: 1.75rem; --fs-5: 3rem; --fs-6: 5rem;
  --c-bg: #FFFFFF; --c-bg-2: #F5F5F7; --c-ink: #1D1D1F; --c-mute: #6E6E73; --c-line: #D2D2D7;
  --c-accent: #0071E3;
  --radius-control: 8px; --radius-card: 18px; --radius-pill: 9999px;
  --shadow-1: 0 1px 2px rgba(0,0,0,.06);
  --ease: cubic-bezier(.25,.1,.25,1); --dur: 200ms;
}
```

## Referências para olhar

- Dieter Rams, os 10 princípios do bom design.
- Apple Human Interface Guidelines (developer.apple.com/design).
- apple.com (páginas de produto), Things 3, Linear (versão clara), Arc.
- Livro *Designed by Apple in California* (2016).

## O que faz parecer genérico

- Branco + Inter + botão azul sem nenhum detalhe cuidado: é template, não minimalismo. O refinado está no tracking, no raio consistente, no ícone afinado.
- Esconder função para "limpar" a tela. Minimalismo tira enfeite, não tira ação.
- Cinza claro demais no texto secundário (abaixo de 4,5:1).

## Combina com / briga com

- **Combina:** `escola-suica`, `escola-vidro-espacial`, `escola-bento`, `escola-japonesa`.
- **Briga:** `escola-maximalista`, `escola-neobrutalismo`, `escola-pop-memphis`.

## Checklist

1. Cada tela tem um assunto e uma ação principal?
2. Título até 6 palavras, no máximo 3 tamanhos de texto?
3. Um acento só, só em ação e link?
4. Raios e traços de ícone consistentes em todo lugar?
5. Produto real no lugar de ilustração?
6. Todo texto cinza passa 4,5:1?
