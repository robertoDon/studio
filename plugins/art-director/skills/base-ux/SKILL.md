---
name: base-ux
description: Base de UX de qualquer escola. Leis de UX (Fitts, Hick, Jakob, Miller, Tesler, Doherty, Peak-end, Von Restorff, Postel) e Gestalt traduzidas em regra de tela, mais as 10 heurísticas de Nielsen com formato de auditoria e severidade de 0 a 4. Use ao desenhar ou revisar tela, fluxo, formulário, navegação ou layout, ou quando pedirem "avaliação heurística", "auditoria de UX", "por que essa tela confunde", "como deixar mais fácil", "leis de UX", "Gestalt".
---

# Base de UX · Psicologia vira medida, heurística vira conserto

Fontes:
- *Laws of UX*, de Jon Yablonski (lawsofux.com, O'Reilly 2020).
- "10 Usability Heuristics for User Interface Design", de Jakob Nielsen (Nielsen Norman Group, 1994, revisado em 2020), e "Severity Ratings for Usability Problems".

A escola muda a cara do produto; a lei e a heurística não mudam. Use as leis para desenhar e as heurísticas para auditar.

## 1. Leis de UX

| Lei | O que diz | Regra de tela |
|---|---|---|
| **Fitts** | O tempo para acertar um alvo cresce com a distância e cai com o tamanho. | Ação principal grande (≥ 44 px de altura) e perto da mão ou do cursor. Destruir fica longe de confirmar. No desktop, cantos e bordas são alvos "infinitos". |
| **Hick** | O tempo de decisão cresce com o número de opções. | Até 1 ação principal e 2 secundárias por tela. Menu com mais de 7 itens vira grupos ou busca. Onboarding pergunta uma coisa por vez. |
| **Jakob** | A pessoa passa a maior parte do tempo em outros produtos e espera que o seu funcione igual. | Logo no topo à esquerda leva à home. Carrinho no topo à direita. Busca com lupa. Swipe de voltar no iOS. Inove na cara, não na convenção. |
| **Miller** | A memória de trabalho segura ~7±2 itens (na prática 4±1; Cowan, 2001). | Quebre números longos (cartão em blocos de 4). Formulário longo em etapas de 3–5 campos. Não peça para lembrar algo de outra tela: mostre de novo. |
| **Tesler** | Toda tarefa tem uma complexidade que não some, só muda de lugar. | A complexidade fica com o sistema: CEP vira endereço, o fuso é detectado, o padrão já vem sugerido. |
| **Doherty** | A produtividade dispara quando o sistema responde em menos de 400 ms. | Resposta visual em ≤ 100 ms. Passou de 400 ms, mostre skeleton ou progresso. Update otimista em ação que quase nunca falha. |
| **Peak-end** | A memória de uma experiência é o pico e o fim. | Capriche no momento de valor (o primeiro resultado) e na conclusão. Erro no fim de um checkout estraga o resto. |
| **Von Restorff** | O item diferente é o que fica lembrado. | Um destaque por tela, e não só por cor (`base-acessibilidade`). |
| **Postel** | Seja liberal no que aceita e conservador no que envia. | Aceite telefone com ou sem máscara, data com barra ou traço, e-mail com espaço no fim. Normalize por baixo. |
| **Posição serial** | Lembramos melhor do primeiro e do último item. | O mais importante no começo e no fim da navegação. |
| **Zeigarnik / goal-gradient** | Tarefa incompleta fica na cabeça, e o esforço aumenta perto do fim. | Mostre progresso real ("Faltam 2 passos"), começando com a 1ª etapa já feita. Nunca invente progresso. |

## 2. Gestalt: como o olho agrupa

| Princípio | Regra de tela |
|---|---|
| **Proximidade** | O espaço entre grupos é ≥ 2× o espaço dentro do grupo. Rótulo a 4–8 px do campo; campos separados por 16–24 px. |
| **Semelhança** | O que faz a mesma coisa tem a mesma cara. Parece igual e age diferente é bug. |
| **Região comum** | Card, fundo ou borda agrupa mais forte que proximidade. Use por seção, não por item (card dentro de card é ruído). |
| **Continuidade** | O olho segue alinhamentos. Alinhe a poucas verticais; cada alinhamento novo é uma pergunta a mais. |
| **Figura-fundo** | Modal, folha e menu se descolam do fundo com véu de 40–60% ou sombra de elevação. |
| **Fechamento** | Card cortado na borda avisa que há scroll horizontal. |
| **Destino comum** | O que se move junto é do mesmo grupo. Anime o grupo, não cada item fora de sincronia. |

## 3. As 10 heurísticas de Nielsen

| # | Heurística | O que procurar |
|---|---|---|
| 1 | **Visibilidade do estado do sistema** | Todo clique responde em ≤ 100 ms. Carregamento acima de 1 s mostra progresso. Aba ativa, título e "Salvo" visíveis. |
| 2 | **Correspondência com o mundo real** | Palavra do usuário ("Clientes", não "Entidades"). Formato local (dd/mm/aaaa, R$ 1.234,56). |
| 3 | **Controle e liberdade** | Desfazer em vez de "Tem certeza?". Voltar sempre funciona. Modal fecha com Esc e clique fora. |
| 4 | **Consistência e padrões** | Mesma palavra e mesma posição para a mesma coisa. Segue a plataforma (HIG, Material). |
| 5 | **Prevenção de erros** | Esconde ou desabilita o impossível. Confirma só o irreversível, com o nome do que some. Valida no campo. |
| 6 | **Reconhecer em vez de lembrar** | Opções, recentes e sugestões visíveis. Placeholder não substitui rótulo. |
| 7 | **Flexibilidade e eficiência** | Atalhos, ⌘K, ação em lote. O iniciante não vê, o experiente acelera. |
| 8 | **Estética e minimalismo** | Cada elemento compete com os outros. Um assunto por tela. |
| 9 | **Reconhecer, diagnosticar e sair do erro** | O erro diz o que houve e como resolver, perto do campo. Nunca "Erro 500" sozinho. |
| 10 | **Ajuda e documentação** | Ajuda no ponto da dúvida (tooltip, texto de apoio). O ideal é não precisar. |

## 4. Auditoria

**Severidade (Nielsen):**

| Nota | Significado | Ação |
|---|---|---|
| 0 | Não é problema | Ignore |
| 1 | Cosmético | Se sobrar tempo |
| 2 | Menor: atrapalha, mas dá para contornar | Prioridade baixa |
| 3 | Maior: frequente ou muita gente tropeça | Conserte antes de lançar |
| 4 | Catástrofe: impede a tarefa ou perde dado ou dinheiro | Conserte agora |

A nota combina frequência, impacto e persistência.

**Roteiro:**
1. Defina 3–5 tarefas reais ("criar um cliente"). Audite a tarefa, não a tela solta.
2. Faça a tarefa uma vez como usuário. Na segunda vez, passe heurística por heurística e lei por lei.
3. Meça:
   - ações por tela (Hick): mais de 3 com o mesmo peso, escolha uma principal;
   - alvo e distância da ação principal (Fitts);
   - tempo de resposta (Doherty);
   - grupos (Gestalt): se o espaço não bate com o grupo, conserte o espaço antes de pôr borda.
4. Um problema por linha, ordenado por severidade, agrupando os que têm a mesma causa.
5. Se der, use 3–5 avaliadores: um sozinho acha ~35% dos problemas (Nielsen e Molich, 1990).

```markdown
| # | Onde (tela · elemento) | Problema | Heurística/lei | Sev. | Conserto |
|---|---|---|---|---|---|
| 1 | Checkout · "Continuar" | Some sem aviso com CEP inválido | H1, H9 | 3 | Erro no campo: "CEP não encontrado. Confira os 8 números." |
```

Feche com o total por severidade (ex.: 2 × 4, 5 × 3) e os 3 consertos que mais mudam a experiência. Diga também o que ainda precisa de teste com usuário real.

## Erros comuns

- Citar a lei para justificar o que já ia fazer. A lei serve para decidir.
- Ler Hick como "menos opções sempre". Cortar o que a pessoa precisa esconde o problema; agrupe e priorize.
- Usar Miller como limite de itens no menu. Menu é reconhecimento, não memória; ali o limite é Hick.
- Card em tudo para agrupar. Espaço resolve antes de borda.

## Checklist

1. Uma ação principal, grande e perto da mão?
2. Até 7 opções visíveis por decisão; convenções respeitadas?
3. O sistema adivinha o que pode e aceita formato flexível?
4. Feedback em ≤ 100 ms e progresso acima de 400 ms?
5. Espaço entre grupos ≥ 2× o espaço dentro; um destaque por tela?
6. Dá para desfazer, voltar e sair de qualquer lugar?
7. Todo erro é prevenido antes e, quando acontece, diz como resolver?
8. Pico e fim da experiência caprichados?
