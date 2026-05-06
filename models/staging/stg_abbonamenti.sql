select
  id as id_abbonamento,
  id_ordine,
  iniziato_il,
  finito_il
from {{ source('raw', 'abbonamenti') }}
