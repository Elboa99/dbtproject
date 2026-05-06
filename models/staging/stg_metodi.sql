select
  id as id_metodo,
  nome as nome_metodo
from {{ source('raw', 'metodi') }}
