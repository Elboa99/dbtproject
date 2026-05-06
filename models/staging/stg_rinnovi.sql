select
  id as id_rinnovo,
  id_ordine,
  attivo as rinnovo_attivo
from {{ source('raw', 'rinnovi') }}
