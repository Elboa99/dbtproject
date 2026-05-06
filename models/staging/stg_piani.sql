select
  id as id_piano,
  nome as nome_piano,
  prezzo,
  durata
from {{ source('raw', 'piani') }}
