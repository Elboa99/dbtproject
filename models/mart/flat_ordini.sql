select
  ordine.id_ordine,
  ordine.data_ordine,

  cliente.nome as nome_cliente,
  cliente.cognome as cognome_cliente,

  piano.nome_piano as piano_scelto,
  piano.prezzo as prezzo_del_piano,
  piano.durata as durata_piano,

  pagamento.nome_metodo as metodo_pagamento,

  promo.codice as codice_promozionale,
  promo.sconto as sconto_applicato,

  ordine.data_transazione,
  ordine.importo_pagato,

  ordine.abbonamento_iniziato_il,
  ordine.abbonamento_finito_il,
  ordine.rinnovo_attivo

from {{ ref('fct_ordini') }} as ordine

left join {{ ref('dim_utenti') }} as cliente
  on ordine.id_utente = cliente.id_utente

left join {{ ref('dim_piani') }} as piano
  on ordine.id_piano = piano.id_piano

left join {{ ref('dim_metodi') }} as pagamento
  on ordine.id_metodo = pagamento.id_metodo

left join {{ ref('dim_coupon') }} as promo
  on ordine.id_coupon = promo.id_coupon