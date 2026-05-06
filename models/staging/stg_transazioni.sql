select
  id as id_transazione,
  id_ordine,
  data_transazione,
  importo as importo_pagato
from {{ source('raw', 'transazioni') }}
