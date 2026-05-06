select
  id as id_coupon,
  codice,
  sconto
from {{ source('raw', 'coupon') }}
