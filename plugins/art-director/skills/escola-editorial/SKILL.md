---
name: escola-editorial
description: Escola editorial (revista e jornal). Serifa de display, colunas de texto, capitulares, legendas, hierarquia de manchete, foto de autor, ritmo de página. Use quando o produto vive de conteúdo e leitura ou quer parecer culto, autoral e com voz (mídia, newsletters, blogs, editoras, publicações de marca, gastronomia autoral, cultura, relatórios anuais, landing de produto com storytelling) ou quando pedirem algo "editorial", "de revista", "com serifa", "estilo NYT", "Kinfolk", "magazine", "storytelling".
---

# Editorial · A página tem ritmo

Vem da tradição das revistas e jornais: Alexey Brodovitch na *Harper's Bazaar* (anos 1930–50), *The New York Times*, *Kinfolk*, *Monocle*. Na web, Stripe Press, The Verge e Medium levaram isso para tela. Ideia central: a leitura é a experiência. Manchete, olho, corpo, legenda e respiro criam ritmo como em papel.

## Quando usar

- **Setores:** mídia e jornalismo, newsletters, editoras, blogs de marca, gastronomia autoral, moda com conteúdo, cultura, ONGs com histórias, relatórios e estudos.
- **Público:** adulto leitor, 25–65, que valoriza profundidade.
- **Imagem que passa:** culto, autoral, confiável, sofisticado sem ser frio, "tem algo a dizer".

## Quando não usar

- Ferramenta transacional com pouca leitura (checkout, dashboard operacional).
- Público que quer velocidade e escaneio (apps de entrega, utilidades).
- Sem bom texto e boa foto: editorial sem conteúdo é casca.

## A regra em números

| Grupo | Regra |
|---|---|
| Grid | 12 colunas com coluna de texto de 60–75 caracteres (≈ 640–720 px). Margens assimétricas para legenda e nota lateral. Foto pode sangrar a página inteira. |
| Tipo | Serifa de display + texto: Playfair Display, Fraunces, Newsreader, Source Serif 4, Instrument Serif, EB Garamond (livres); pagas: GT Sectra, Tiempos, Canela. Combine com sans para legenda e UI (Inter, Söhne, Libre Franklin). Corpo 18–21 px, entrelinha 1,55–1,7. Display 48–120 px, entrelinha 1,05, tracking −1%. Escala 1,414. |
| Cor | Papel #FAF8F3 ou branco, tinta #1A1A1A, cinza de legenda #6B6B6B. Um acento editorial (vermelho #C8102E, verde-garrafa #1F4D3A ou cor de seção). Cor vem principalmente da fotografia. |
| Forma | Raio 0–2 px. Fios de 1 px (régua editorial) entre seções. Sem sombra. Capitular de 3–4 linhas. Aspas de abertura grandes em citação. |
| Imagem | Fotografia autoral grande, com legenda e crédito. Proporções editoriais (4:5, 3:2, panorâmica). Ilustração autoral encomendada, nunca stock genérico. |
| Espaço | Respiro vertical forte entre seções (≥ 96 px). Parágrafo com espaço de 1 linha ou recuo, nunca os dois. |
| Movimento | Mínimo. Fade de imagem ao entrar, 300–500 ms; barra de progresso de leitura. Nada que atrapalhe a leitura. Respeite o teto do projeto (padrão: toque ≤ 160 ms, revelar ≤ 700 ms, cena ≤ 1,2 s). |

## Por superfície

- **App web / dashboard:** usar só o toque editorial: título de página em serifa, corpo em sans, relatórios com manchete e "olho" (resumo em 1 frase) antes do número.
- **App mobile:** leitor com corpo 18 px, tema sépia opcional, tamanho ajustável, salvar para depois, tempo de leitura no topo.
- **Landing page:** storytelling em capítulos (01, 02, 03), manchete em serifa grande, citações de clientes como pull quotes, foto sangrada.
- **Site institucional / blog:** capa com manchete principal + 3 secundárias, seções com cor de editoria, página de artigo com autor, data e legenda.

## Tokens de partida

```css
:root {
  --font-display: "Fraunces", "Playfair Display", Georgia, serif;
  --font-text: "Source Serif 4", "Newsreader", Georgia, serif;
  --font-ui: "Inter", "Libre Franklin", system-ui, sans-serif;
  --fs-caption: 0.8125rem; --fs-body: 1.1875rem; --fs-h3: 1.5rem; --fs-h2: 2.25rem; --fs-h1: 3.5rem; --fs-display: 6rem;
  --lh-body: 1.6; --lh-display: 1.05; --measure: 68ch;
  --c-paper: #FAF8F3; --c-ink: #1A1A1A; --c-mute: #6B6B6B; --c-rule: #1A1A1A; --c-accent: #C8102E;
  --rule: 1px solid var(--c-rule); --radius: 0;
}
```

## Referências para olhar

- press.stripe.com, nytimes.com (especiais interativos), theverge.com, kinfolk.com, monocle.com.
- Alexey Brodovitch, *Harper's Bazaar*; Jan Tschichold, *A forma do livro*.
- Robert Bringhurst, *Elementos do estilo tipográfico*.

## O que faz parecer genérico

- Serifa só no título e o resto igual a qualquer SaaS: falta ritmo editorial (olho, legenda, capitular, fio).
- Linha de texto com 120 caracteres: ninguém lê.
- Foto de banco de imagem com gente sorrindo para a câmera.

## Combina com / briga com

- **Combina:** `escola-luxo-silencioso`, `escola-suica`, `escola-artesanal`, `escola-japonesa`.
- **Briga:** `escola-clay-3d`, `escola-material`, `escola-dark-tech`.

## Checklist

1. Coluna de texto entre 60 e 75 caracteres, corpo ≥ 18 px?
2. Par tipográfico claro: serifa de display, texto legível, sans de UI?
3. Toda foto tem legenda ou crédito e proporção editorial?
4. Existe ritmo: manchete, olho, corpo, citação, fio?
5. O acento aparece pouco e com sentido (editoria, link)?
6. A página funciona como leitura do começo ao fim, sem distração?
