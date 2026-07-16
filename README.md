# robot-demo-test

Repository dimostrativo per l'automazione dei test con **Robot Framework**.

Contiene una suite di test automatizzati pensata per verificare la raggiungibilità e il corretto funzionamento di siti web. Il progetto segue una struttura documentata: ogni test case è tracciato in una scheda markdown dedicata (nella cartella `docs/test-cases/`) che ne descrive obiettivo, precondizioni, passi e risultato atteso.

## Struttura del progetto

| Cartella / File | Descrizione |
|---|---|
| `tests/` | Suite di test Robot Framework |
| `docs/test-cases/` | Documentazione dei test case (formato markdown) |
| `run/` | Script e istruzioni per l'esecuzione dei test |

## Test Case

Elenco di tutti i test automatizzati presenti nei file `.robot`:

| ID | Nome Test | File | Tag | Descrizione                                                                                          | Documento di riferimento |
|---|---|---|---|------------------------------------------------------------------------------------------------------|---|
| TC-001 | Login Con Credenziali Valide | `tests/login1.robot` | `login`, `smoke`, `high` | Verifica che il sito `example.com` sia raggiungibile e che il titolo della pagina contenga "Example" | [TC-001-login-valido.md](docs/test-cases/TC-001-login-valido.md) |
| TC-002 | Verifica Presenza Link | `tests/login1.robot` | `link`, `smoke`, `medium` | Verifica che nella pagina sia presente il link  "Learn more" | [TC-002-verifica-link.md](docs/test-cases/TC-002-verifica-link.md) |

## Report

L'ultimo report di esecuzione è disponibile qui:  
https://andrea77apple.github.io/robot-demo-test/report.html
