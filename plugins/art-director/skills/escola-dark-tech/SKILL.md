---
name: escola-dark-tech
description: Dark tech (Linear, Vercel, Raycast). Fundo quase preto, cinzas em camadas, brilho e gradiente sutis, borda de 1 px luminosa, fonte mono em detalhes, atalhos de teclado, precisão de pixel. Use quando o produto é para desenvolvedores, times de produto, IA, infraestrutura, cripto sério ou SaaS que quer parecer rápido, preciso e de ponta (dev tools, APIs, IA, analytics, segurança, produtividade para power users) ou quando pedirem algo "estilo Linear", "estilo Vercel", "dark mode bonito", "tech", "dev", "futurista sério", "IA".
---

# Dark tech · Precisão no escuro

Nasceu da cultura de devtools: editores escuros, terminais, e foi refinado por Linear (2019–), Vercel, Raycast, Supabase e pela onda de produtos de IA. Ideia central: o escuro não é estilo, é foco. Muitos cinzas em camadas, um brilho controlado e velocidade percebida. Cada pixel é intencional.

## Quando usar

- **Setores:** ferramentas para devs, APIs, cloud e infraestrutura, IA e LLM, segurança, analytics de produto, gestão de projetos para times técnicos, cripto institucional.
- **Público:** 22–45, técnico, power user, que vive no teclado.
- **Imagem que passa:** rápido, preciso, de ponta, sério, "feito por engenheiros que ligam para design".

## Quando não usar

- Público geral pouco digital, saúde, família, alimentação: o escuro parece frio e técnico.
- Leitura longa de conteúdo (blog, documentação extensa): ofereça tema claro.
- Quando o produto em si não é rápido: a estética promete velocidade.

## A regra em números

| Grupo | Regra |
|---|---|
| Grid | 12 colunas, largura máxima 1120–1200 px. Na app: barra lateral 220–260 px, conteúdo com densidade média-alta. Alinhamento em pixel exato, grid de 4. |
| Tipo | Inter, Geist, Söhne (livres: Inter, Geist, Manrope) + mono para código, atalho e número: Geist Mono, JetBrains Mono, Berkeley Mono (paga). Display 500–600 com tracking −2% a −3%. Corpo 13–15 px na app, 16–18 na landing. Texto em gradiente branco → cinza só em manchete. |
| Cor | Fundo #08090A a #0B0B0F, superfícies em degraus: #111113, #18181B, #1F1F23. Bordas rgba(255,255,255,.06–.10). Texto: #F7F8F8, secundário #8A8F98 (≥ 4,5:1). Um acento: violeta #5E6AD2, azul #3B82F6 ou verde #3ECF8E. Brilho: radial-gradient do acento a 8–15% de opacidade atrás do hero. |
| Forma | Raio 6–8 px em controle, 12 px em card. Borda de 1 px em vez de sombra. Destaque com borda gradiente (conic ou linear) muito sutil. Ícones de traço 1,5 em 16 px. |
| Imagem | Screenshot real da interface, em alta resolução, com perspectiva leve e reflexo. Grid de pontos ou linhas a 4% como textura. Nada de ilustração fofa. |
| Espaço | App densa (linha de 32–36 px, padding 8–12). Landing com seções ≥ 120 px e muito escuro em volta do produto. |
| Movimento | Rápido e seco: 100–150 ms ease-out em UI; brilho que segue o cursor; texto que revela em cena de até 1,2 s na landing. Nada pisca. Respeite o teto do projeto (padrão: toque ≤ 160 ms, revelar ≤ 700 ms, cena ≤ 1,2 s). |

## Por superfície

- **App web / dashboard:** barra lateral com atalhos (`G` + letra), `⌘K` para tudo, lista densa com status em ícone + texto, painel de detalhe à direita, update otimista.
- **App mobile:** escuro com superfícies em degraus, listas densas mas com 44 pt de toque, swipe com botão equivalente.
- **Landing page:** hero com manchete em gradiente de texto, brilho radial do acento atrás, screenshot real flutuando, logos de clientes em cinza, seções com borda de 1 px e grid de pontos.
- **Site institucional / docs:** documentação com tema claro opcional, código em mono com highlight discreto, changelog datado.

## Tokens de partida

```css
:root {
  --font-sans: "Geist", "Inter", system-ui, sans-serif;
  --font-mono: "Geist Mono", "JetBrains Mono", ui-monospace, monospace;
  --c-bg: #08090A; --c-1: #111113; --c-2: #18181B; --c-3: #1F1F23;
  --c-line: rgba(255,255,255,.08); --c-ink: #F7F8F8; --c-mute: #8A8F98;
  --c-accent: #5E6AD2; --glow: radial-gradient(600px 300px at 50% 0%, rgba(94,106,210,.15), transparent 70%);
  --radius-control: 6px; --radius-card: 12px;
  --dur: 120ms; --ease: cubic-bezier(.2,0,0,1);
}
.headline { background: linear-gradient(180deg,#FFF 30%,#9CA3AF); -webkit-background-clip: text; color: transparent; }
```

## Referências para olhar

- linear.app (e o texto "The Linear Method"), vercel.com, raycast.com, supabase.com, resend.com, cursor.com.
- Rauno Freiberg (rauno.me) e seus ensaios de interação.
- Paco Coursey, Emil Kowalski (sonner, vaul).

## O que faz parecer genérico

- Preto puro #000 com texto branco puro: cansa e vira "template dark".
- Gradiente roxo-azul gigante em tudo: brilho tem que ser sutil.
- Glow em cada card. Um brilho por dobra.

## Combina com / briga com

- **Combina:** `escola-utilitaria`, `escola-bento`, `escola-vidro-espacial`, `escola-suica`.
- **Briga:** `escola-escandinava`, `escola-artesanal`, `escola-organica`, `escola-clay-3d`.

## Checklist

1. Fundo quase preto (não #000) com 3–4 degraus de superfície?
2. Borda de 1 px no lugar de sombra?
3. Texto secundário ≥ 4,5:1 e um acento só?
4. Ações frequentes com atalho e `⌘K`?
5. Transições ≤ 150 ms em UI, nada piscando?
6. Screenshot real do produto na vitrine?
