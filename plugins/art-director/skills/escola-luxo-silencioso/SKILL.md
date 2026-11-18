---
name: escola-luxo-silencioso
description: Luxo silencioso (quiet luxury). Serifas finas ou sans largas em caixa alta espaçada, muito espaço vazio, preto, off-white e um metal contido, foto de produto como joia, ritmo lento. Use quando o produto quer parecer chique, exclusivo, caro e discreto (moda, joias, hotelaria, imóveis de alto padrão, vinhos, perfumaria, clínicas estéticas premium, arquitetura de interiores, concierge) ou quando pedirem algo "chique", "elegante", "luxuoso", "premium de verdade", "sofisticado", "high-end", "boutique".
---

# Luxo silencioso · Quem é, não precisa gritar

Vem das maisons de moda (Celine de Phoebe Philo, The Row, Loro Piana, Hermès) e da hotelaria de alto padrão (Aman). Na web, o padrão foi definido por sites de moda e joalheria com muito vazio e tipografia contida. Ideia central: o luxo está na restrição. Pouco elemento, muito espaço, material impecável, nada de desconto ou urgência.

## Quando usar

- **Setores:** moda, joalheria, relojoaria, hotelaria e resorts, imóveis de alto padrão, vinhos e destilados, perfumaria, estética premium, galerias, interiores, serviços de concierge e family office.
- **Público:** alta renda, 30–65, que não quer ser convencido, quer ser reconhecido.
- **Imagem que passa:** chique, exclusivo, atemporal, calmo, "não é para todo mundo".

## Quando não usar

- Varejo de volume, promoção, preço baixo: o vazio parece falta de produto.
- Ferramenta de trabalho diário: a lentidão e o tipo fino cansam.
- Sem fotografia de altíssima qualidade: luxo com foto ruim vira falso.

## A regra em números

| Grupo | Regra |
|---|---|
| Grid | 12 colunas com muitas vazias. Conteúdo ocupa 4–6 colunas, o resto é respiro. Produto centralizado ou em composição assimétrica deliberada. |
| Tipo | Serifa de alto contraste e fina: Cormorant Garamond, Bodoni Moda, Playfair Display 400, Italiana, Marcellus (livres); pagas: Didot, Canela, Ogg, Saol. Ou sans larga e leve: Montserrat 300, Jost 300, Syne (livres), Neue Haas Unica. Rótulos em caixa alta com tracking +12% a +20%, 11–13 px. Display 300–400, nunca 700. Corpo 15–16 px, entrelinha 1,6. |
| Cor | Off-white #F7F4EF, marfim #EFE9E1, preto suave #111110, taupe #8C8279. Metal só em detalhe fino: dourado contido #B39762 ou champanhe #C9B79C (nunca gradiente "ouro"). No máximo 1 cor de marca, escura (verde-garrafa #1E2B24, bordô #4A1C24). |
| Forma | Raio 0. Fios de 0,5–1 px. Sem sombra. Botão em texto sublinhado ou retângulo com contorno fino. Ícones finíssimos (traço 1). |
| Imagem | Fotografia editorial com luz natural ou de estúdio, produto como objeto de arte, muito ar em volta. Vídeo lento em loop no hero. Nunca stock, nunca recorte com fundo branco de e-commerce barato. |
| Espaço | Exagerado. Seção ≥ 160 px vertical, margens laterais ≥ 8% da largura. Um elemento por dobra. |
| Movimento | Lento e raro: fade de 400–700 ms, ease-in-out; imagem com zoom de 1,00 → 1,03 em cena de até 1,2 s. Nenhum bounce. Respeite o teto do projeto (padrão: toque ≤ 160 ms, revelar ≤ 700 ms, cena ≤ 1,2 s). |

## Por superfície

- **App web / dashboard:** área de cliente (pedidos, reservas) clara, tipo fino só nos títulos, corpo em sans legível. Tabela com fios finos, nada de cor de status gritante.
- **App mobile:** navegação mínima (menu em texto), produto em tela cheia, informação em folha que sobe. Rótulos em caixa alta espaçada.
- **Landing page:** hero com foto ou vídeo sangrado e só o logotipo + uma linha. Coleções em grade espaçada, preço discreto ou "sob consulta". CTA em texto ("Descobrir", "Agendar visita").
- **Site institucional:** história da casa em capítulos, foto do ateliê/espaço, mapa e contato discretos, assinatura de concierge.

## Tokens de partida

```css
:root {
  --font-display: "Cormorant Garamond", "Bodoni Moda", Didot, serif;
  --font-sans: "Jost", "Montserrat", system-ui, sans-serif;
  --fs-label: 0.75rem; --fs-body: 0.9375rem; --fs-h2: 2rem; --fs-h1: 3.5rem; --fs-display: 5.5rem;
  --tracking-label: 0.16em; --fw-display: 400; --fw-body: 300;
  --c-bg: #F7F4EF; --c-bg-2: #EFE9E1; --c-ink: #111110; --c-mute: #6E665F; --c-gold: #B39762;
  --rule: 1px solid rgba(17,17,16,.15); --radius: 0;
  --ease: cubic-bezier(.45,0,.25,1); --dur-reveal: 600ms;
}
```

## Referências para olhar

- therow.com, celine.com, loropiana.com, hermes.com, aman.com, bottegaveneta.com.
- Aesop (aesop.com) como ponte entre luxo e artesanal.
- Kenya Hara e o vazio como valor (ver `escola-japonesa`).

## O que faz parecer genérico

- Dourado em gradiente, brilho, ornamento: parece "luxo de shopping", não luxo.
- Urgência e desconto ("Últimas unidades!", contador): destrói a imagem.
- Texto fino cinza-claro sobre off-white abaixo de 4,5:1. Chique não é ilegível.

## Combina com / briga com

- **Combina:** `escola-editorial`, `escola-japonesa`, `escola-minimalismo-refinado`.
- **Briga:** `escola-neobrutalismo`, `escola-pop-memphis`, `escola-clay-3d`, `escola-esportiva`.

## Checklist

1. Um elemento por dobra, com espaço vazio maior que o ocupado?
2. Display em peso 300–400, rótulos em caixa alta espaçada?
3. Paleta neutra quente com metal só em detalhe fino?
4. Nenhuma urgência, desconto ou exclamação?
5. Fotografia editorial de alta qualidade em todo produto?
6. Mesmo fino, todo texto passa 4,5:1?
