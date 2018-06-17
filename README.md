# elk-poc

POC per testare le potenzialità di Elastic Stack

# Logstash

Sono definite 4 pipeline:
* `spring-cloud-poc-tcp-json`: accetta input in **json** via TCP sulla porta 5000
* `spring-cloud-poc-filebeat-json`: accetta input **json** via FileBeat sulla porta 5044
* `spring-cloud-poc-filebeat-plain`: accetta le righe di log (lette e inviate da FileBeat) sulla porta 5045
* `spring-cloud-poc-file-plain`: legge direttamente i file delle applicazioni dal percorso `/logs/*/*/*/*.log`. 
Affinché funzioni, è necessario mappare come volume la cartella `/logs` (commentata nel `docker-compose.yml`). Nel caso di Spring Boot su Mac è rimappata su `/var/folders`
