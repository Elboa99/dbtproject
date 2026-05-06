select
  id_coupon,
  codice,
  sconto
from {{ ref('stg_coupon') }}