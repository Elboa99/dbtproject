select
  ord.id_ordine,

  -- chiavi verso le dimensioni
  ord.id_utente,
  ord.id_piano,
  ord.id_coupon,
  ord.id_metodo,

  -- informazioni dell'ordine
  ord.data_ordine,

  -- informazioni economiche
  trx.data_transazione,
  trx.importo_pagato,

  -- periodo dell'abbonamento generato dall'ordine
  abb.iniziato_il as abbonamento_iniziato_il,
  abb.finito_il as abbonamento_finito_il,

  -- stato del rinnovo
  rin.rinnovo_attivo

from {{ ref('stg_ordini') }} as ord

left join {{ ref('stg_transazioni') }} as trx
  on ord.id_ordine = trx.id_ordine

left join {{ ref('stg_abbonamenti') }} as abb
  on ord.id_ordine = abb.id_ordine

left join {{ ref('stg_rinnovi') }} as rin
  on ord.id_ordine = rin.id_ordine