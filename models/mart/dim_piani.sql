select
  id_piano,
  nome_piano,
  prezzo,
  durata
from {{ ref('stg_piani') }}