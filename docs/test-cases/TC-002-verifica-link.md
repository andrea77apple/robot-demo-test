---
id: TC-002
title: Verifica presenza link nella pagina
priority: medium
status: automated
automation_ref: tests/login1.robot
---

## Obiettivo
Verificare che nella pagina https://example.com sia presente il link individuato tramite XPath `/html[1]/body[1]/div[1]/p[2]/a[1]`.

## Precondizioni
- Il sito https://example.com è raggiungibile

## Passi
1. Aprire la pagina https://example.com
2. Cercare l'elemento corrispondente all'XPath `/html[1]/body[1]/div[1]/p[2]/a[1]`
3. Verificare che l'elemento sia visibile nella pagina

## Risultato atteso
Il link è presente e visibile nella pagina.

