select
  id_utente,
  nome,
  cognome,
  data_nascita,
  data_registrazione
from {{ ref('stg_utenti') }}