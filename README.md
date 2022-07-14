# SplitColor.com

# README

* Autor: Juan Gutiérrez Ortega
* Ámbito: Emprendimiento con Ruby on Rails

* Configuration

* Database creation
    - Local: rails db:migrate
    - Romoto: heroku rake run db:migrate

* Database initialization
    - Local: rails db:seeds
    - Remoto: heroku run rake db:seeds

* Web Productiva:
    - https://afternoon-reaches-16528.herokuapp.com/

* GitHub:
    - https://github.com/JPGcl/SplitColorFront.git

* Deployment instructions
    - Unix*: bundle
    - MacOS: bundle lock --add-platform x86_64-linux
      -   git add .
      -   git commit -m "XXXXXX"
      -   git push heroku main 

    git add . &&
    git commit -m "Deploy" &&
    git push origin main &&
    git push heroku main # GitHub & Heroku

# TODO

TODO: Ordenar y priorizar la siguente lista de To-Do
TODO: Infraestructura VPS; Habilitar SO, Unix*.
TODO: VPS; Instalar/configurar;
    Servidor Web            : a evaluar Apache, NGINX, u otro de alta carga.
    RoR                     : Ruby 3.1.1p18+ + Rails 7.0.3+
    BD                      : PostgreSql 14+
    Almacenamiento Cloud    : Bucket AWS S3
    Almacenamiento Local    : SDD
    Seguridad               : Fail2ban
    Antivirus               : ClamAv v0.105+
    Servidor de Correo      : Sendmail / iRedMail
    Certificado SSL         : Let’s Encrypt
    Monitoreo               : Checkmk / NetData
    Analisis de carga       : ApacheBench, Autocannon

TODO: Refactoring del index de todas las vistas, ya que hay mucho código reutilizable en el Panel principal. Esto debido a que he adaptado una "plantilla" no escrita para Rails y lo he fusionado con la UI de la versión 0.1. del Hito 1 y 2.
TODO: Vista de Imágenes; Asociar imágenes al link en Bucket S3.
TODO: Habilitar Botón Donwload de imágenes tanto individuales como del grupo de imágenes asociado.
TODO: Habilitar Bucket AWS S3.
TODO: Alojar en VPS.
TODO: Task; crear la cola de trabajos.
TODO: Task; crear Unix* JOB para gatillar el procesamiento de imagenes que se encuentren en la cola de Task, priorizando antiguedad.
TODO: Habilitar aviso en la interfaz web, sobre trabajo terminado.
TODO: Restringir tamaño de imagen.
TODO: Habilitar almacenamiento Espejo en disco local.
TODO: Habilitar Bucket AWS S3 según nombre/id de usuario.
TODO: Pasar a Async.
TODO: FAVORITOS: Limitar cantidad de favoritos a 5 x usuario.
    -> Le paga a la Vista y al Controlador.

--------------------
Kubernetes -> web
RabbitNMQ -> En Amazon SQS.
Monolito a servicios.
