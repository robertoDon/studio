---
name: base-microcopy
description: Microcopy de interface: verbo no botão, erro que diz como resolver, estado vazio com voz e ação, confirmação, tom por marca. Use ao escrever ou revisar texto de botão, rótulo, mensagem de erro, toast, onboarding, estado vazio, notificação, ou quando pedirem "melhora esse texto", "UX writing", "mensagem de erro", "tom de voz".
---

# Microcopy · A interface fala

Fontes: Kinneret Yifrah, *Microcopy: The Complete Guide*; Torrey Podmajersky, *Strategic Writing for UX*; Nielsen Norman Group ("Error-Message Guidelines", "Tone of Voice"); Material Design 3 e Apple HIG (Writing); Mailchimp Content Style Guide. A escola muda o jeito de falar. A clareza não muda.

## Regras gerais

- **Curto e na ordem certa:** o que importa primeiro. "Pagamento recusado. Tente outro cartão."
- **Palavra do usuário,** não do sistema: "Clientes", não "Registros"; "Não deu para salvar", não "Falha na persistência".
- **Voz ativa e segunda pessoa** quando fala com a pessoa ("Você recebeu"), primeira pessoa quando é escolha dela ("Meus pedidos").
- **Frase de caso normal** (só a primeira letra maiúscula) em botão, título e menu. Caixa alta só em versalete curto.
- **Sem exclamação, sem jargão, sem "por favor" em todo lugar.** Um "desculpe" só quando a culpa é do produto.
- **Número em algarismo** ("3 tarefas"), data relativa quando recente ("há 2 dias"), absoluta quando antiga ("12 de março").

## Botão

| Ruim | Bom | Por quê |
|---|---|---|
| OK / Confirmar / Enviar | Mandar mensagem / Pagar R$ 49 | Verbo + objeto: diz o que acontece |
| Sim / Não | Apagar proposta / Manter | Opções que se entendem sem ler a pergunta |
| Clique aqui | Ver planos | Link diz para onde vai |
| Cancelar (em fluxo de cancelar assinatura) | Manter assinatura / Cancelar assinatura | Evita ambiguidade |

Botão principal com 1–3 palavras. O mesmo verbo do título do diálogo ("Apagar proposta?" → "Apagar").

## Erro

Formato: **o que houve + como resolver**, perto de onde aconteceu, sem culpar a pessoa.

| Ruim | Bom |
|---|---|
| Dados inválidos. | CPF com 11 números. Faltou 1. |
| Erro 500. | Não deu para salvar agora. Suas mudanças estão guardadas; tente de novo em 1 minuto. |
| Senha incorreta! | Senha não confere. Esqueceu? Mandamos um link. |
| Campo obrigatório. | Digite seu e-mail para receber o recibo. |

Mostre o erro só depois que a pessoa sai do campo ou envia, não enquanto digita. Diga o formato antes (texto de apoio), não só depois.

## Estado vazio

Formato: **o que vai aparecer aqui + por que vale + a ação que faz aparecer**.

- Ruim: "Nenhum dado encontrado."
- Bom: "Suas propostas aparecem aqui. Crie a primeira em 2 minutos." [Criar proposta]
- Busca sem resultado: diga o que buscou e ofereça saída: "Nada para 'acme ltda'. Tente só 'acme' ou crie o cliente." 
- Vazio porque terminou tudo é vitória, não ausência: "Tudo em dia."

## Confirmação e feedback

- Ação feita: confirme no lugar da ação, no passado e com o objeto: "Lembrete enviado", "Mensagem copiada".
- Ação irreversível: confirme antes, com o nome do que some e a consequência: "Apagar 'Proposta Acme'? Ela some para todo o time."
- Melhor que confirmar: **desfazer**. "Proposta arquivada. [Desfazer]"

## Carregando e espera

- Até 1 s: nada de texto. 1–10 s: skeleton ou "Carregando propostas…". > 10 s: diga o que está acontecendo e quanto falta.
- Use reticências (…) e gerúndio só enquanto acontece.

## Tom por marca

O tom muda por contexto: mais leve no sucesso, mais sério no erro e no dinheiro. Defina 3 adjetivos da voz e o que ela **não** é.

| Marca | É | Não é | Exemplo de sucesso |
|---|---|---|---|
| Confiável (banco, saúde) | Claro, calmo, preciso | Fofo, piadista | "Transferência feita. Chega em até 30 min." |
| Moderna (SaaS, tech) | Direta, enxuta, segura | Robótica | "Pronto. 3 contatos importados." |
| Divertida (consumo, Gen Z) | Leve, espirituosa | Forçada, cheia de gíria | "Feito. Você tá voando." |
| Chique (luxo) | Sóbria, elegante, pouca palavra | Íntima, exclamativa | "Seu pedido foi confirmado." |
| Acolhedora (bem-estar, culinária) | Calorosa, humana | Melosa | "Receita salva. Bom apetite." |

Nunca faça piada em erro, perda de dado, dinheiro ou saúde.

## Checklist

1. Todo botão tem verbo + objeto e se entende sozinho?
2. Todo erro diz o que houve e como resolver, perto do campo?
3. Todo estado vazio tem voz e uma ação?
4. Confirmações no lugar da ação, com desfazer quando possível?
5. Palavras do usuário, sem jargão, sem exclamação?
6. Tom definido em 3 adjetivos e coerente em todo o produto?
7. Nada de piada em erro, dinheiro ou saúde?
