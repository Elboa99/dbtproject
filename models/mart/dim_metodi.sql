select
  id_metodo,
  nome_metodo
from {{ ref('stg_metodi') }}