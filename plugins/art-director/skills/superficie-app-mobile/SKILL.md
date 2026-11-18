---
name: superficie-app-mobile
description: App mobile (nativo ou PWA): zona do polegar, barra de abas, folhas, gestos sempre com botão equivalente, safe areas, diferenças iOS × Android e cuidados de PWA. Independe da escola visual. Use ao desenhar, codar ou revisar app de celular, PWA, tela mobile, ou quando pedirem "mobile", "app", "celular", "iOS", "Android", "bottom sheet", "tab bar".
---

# App mobile · Tudo ao alcance do polegar

Fontes: Apple Human Interface Guidelines (iOS); Material Design 3 (Android); Steven Hoober, "How Do Users Really Hold Mobile Devices?" (UXmatters, 2013) e *Designing Mobile Interfaces*; Luke Wroblewski, *Mobile First*; web.dev (PWA). A escola dá a cara. Esta skill faz caber na mão.

## Zona do polegar

~49% das pessoas usam o celular com uma mão (Hoober). O terço de baixo da tela é fácil; o topo e os cantos de cima são difíceis.

- **Embaixo (fácil):** abas, ação principal, botões de folha, teclado.
- **Meio:** conteúdo e rolagem.
- **Topo (difícil):** título, voltar, ações raras (configurar, buscar, criar pode ficar no topo direito se a convenção do app pede).
- Ação destrutiva longe da principal.

## Medidas

| Item | iOS | Android (Material 3) |
|---|---|---|
| Alvo mínimo | 44 × 44 pt | 48 × 48 dp |
| Margem lateral | 16–20 pt | 16 dp |
| Barra de abas | 49 pt + safe area | Navigation bar 80 dp |
| Texto de corpo | 17 pt (Body) | 16 sp (Body Large) |
| Título grande | 34 pt (Large Title) | 28–32 sp (Headline) |

Respeite o tamanho de texto do sistema (Dynamic Type / escala de fonte): layout não quebra a 200%.

## Navegação

- **Barra de abas** com 3–5 destinos de topo, ícone + rótulo, sempre visível nas telas de topo. A aba ativa com ícone preenchido e peso, não só cor.
- Mais de 5 destinos: "Mais" ou repensar a arquitetura. Menu hambúrguer esconde tudo e derruba uso (NN/g).
- Pilha de navegação: voltar no topo esquerdo + gesto de borda (iOS) / botão e gesto de voltar do sistema (Android). Nunca quebre o voltar.
- Ação de criar: no topo direito ou no conteúdo; FAB (Android) só se for *a* ação do app, e nunca sobre a barra de abas atrapalhando o polegar.

## Folhas e modais

- **Folha de baixo (bottom sheet)** para ação curta, escolha e detalhe: alça visível, cantos de 16–24, fecha arrastando para baixo e também com botão "Fechar".
- Alturas: média (~50%) e grande (~90%). Conteúdo que precisa de mais vira tela.
- Modal de tela cheia só para tarefa com começo e fim (criar, editar, pagar), com "Cancelar" e a ação nomeada.
- Alerta do sistema só para irreversível ou crítico. No máximo 2 botões.

## Gestos

- **Todo gesto tem botão equivalente** com nome. Arrastar para apagar também existe em "…" → "Apagar". Gesto é atalho, não único caminho (WCAG 2.5.1).
- Gestos padrão: tocar, arrastar para rolar, puxar para atualizar, deslizar a linha para ações, pinçar para zoom, borda para voltar (iOS). Não invente gesto que briga com o sistema.
- Deslizar a linha: no máximo 2–3 ações, a destrutiva em vermelho e com desfazer.

## Safe areas e teclado

- Use `env(safe-area-inset-*)` (web) ou SafeAreaView (nativo). Nada importante embaixo do notch, da Dynamic Island ou do indicador de home.
- `viewport-fit=cover` na meta viewport do PWA.
- Quando o teclado abre, o campo ativo e o botão de enviar continuam visíveis.
- Teclado certo por campo: `inputmode="numeric"`, `type="email"`, `autocomplete="one-time-code"`, `enterkeyhint="send"`.

## iOS × Android

| Assunto | iOS (HIG) | Android (Material 3) |
|---|---|---|
| Voltar | Topo esquerdo + gesto de borda | Gesto/botão do sistema; seta no topo |
| Título | Large title que encolhe ao rolar | Top app bar, título à esquerda |
| Ação principal | Na barra ou no conteúdo | FAB permitido |
| Seleção | Switch, segmented control | Switch, chips, radio |
| Fonte do sistema | SF Pro | Roboto / fonte do fabricante |
| Haptics | Leve em confirmações | Leve, menos usado |

Em app multiplataforma, mantenha a marca e respeite a convenção de navegação de cada sistema (Jakob).

## PWA

- Manifest com nome, ícones (192 e 512, maskable), `display: standalone`, cor de tema.
- Funciona offline no mínimo com casca e último estado. Diga quando está sem rede.
- iOS: notificação push só para PWA instalado na tela inicial; explique como instalar quando fizer sentido, sem pop-up na primeira visita.
- Sem `user-scalable=no`. Sem hover como único jeito de revelar algo.
- Toque responde em ≤ 100 ms: sem atraso de 300 ms (`touch-action: manipulation`), estado pressionado visível.

## Dobráveis e telas adaptáveis

Regra de estrutura, não de estilo. Fonte: https://muz.li/blog/apple-event-2026-iphone-duo-designers/ (o artigo não cita apps).

- **Classe de tamanho, não aparelho:** compacto (< 600 dp), médio (600–840 dp) e expandido (> 840 dp), as faixas de window size class do Material. Faça 3 layouts, não 1 esticado. Na web, use container queries.
- **Colunas pares em volta da dobra** (2, 4 ou 6), para nada cair no vinco. Nada interativo na dobra nem atrás da câmera.
- **Postura livro:** alertas e ações vão para o lado do polegar. **Postura mesa:** o que é para olhar fica em cima e os controles ficam embaixo (vídeo e chamada).
- No expandido, a barra de abas vira barra lateral, e a barra de ferramentas só de ícones vai para a borda vertical.
- Abrir ou dobrar o aparelho é revelar (≤ 700 ms), mantendo no lugar o item em foco. Com movimento reduzido, corte direto.
- Armadilha: esticar o layout do celular na tela aberta. A linha fica com 200 caracteres e o botão longe do dedo.

## Performance e movimento

- Lista longa virtualizada. Imagem no tamanho da tela.
- Transições de tela 250–350 ms, folha 300–400 ms, toque ≤ 160 ms (ver `base-movimento`).
- Skeleton em vez de spinner; update otimista.

## Checklist

1. Ação principal e abas na zona do polegar?
2. Alvos de 44 pt / 48 dp, texto respeitando a escala do sistema?
3. Barra de abas com 3–5 itens, ícone e rótulo, sem hambúrguer?
4. Folha fecha arrastando e com botão?
5. Todo gesto tem botão equivalente?
6. Safe areas e teclado tratados?
7. Convenções de iOS e Android respeitadas?
8. PWA com manifest, offline básico e sem bloquear zoom?
