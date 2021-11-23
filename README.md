# README

El desarrollo consta de los 5 modelos en total, Merchant, Shopper, Order, Disbursement (donse se quedan guardados los reembolsos por cada orden), Fee Configuration Type (será un modelo donde se podrá guardar el tipo de reembolso que se va a aplicar a cada Merchant), Fee Configuration (son las diferentes configuraciones de reembolso que se puede aplicar a las ordenes de un merchant con una Fee Configuration Type determinada) y Audit (donde se guarda un log de cada uno de los procesos de creación de un reembolso a partir de una orden).

Estos modelos tienen test unitarios

El endpoint para obtener los reembolsos (Disbursement) tiene su lógica en un servicio y se va a serializar en JSON mediante un schema. Tiene un test de integración que valida una respuesta correcta y se valida el schema contrato del json serializado.

Hay un job que se podría ejecutar mediante un resque scheduler todos los lunes y de esta manera obtener los reembolsos (Disbursement) 

Los controladores utilizan servicios y cada uno tiene sus tests.

(Falta el modelo de Audit y la configuración del resque scheduler, esta planteada la solución pero falta implementar algún método)

El projecto va con webpack, aunque no haría falta para un api rest.
Se podrían crear indices para mejorar el rendimiento.



