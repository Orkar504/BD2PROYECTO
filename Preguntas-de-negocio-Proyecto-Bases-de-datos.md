# Preguntas de Negocio para el Proyecto.
## Base de datos a utilizar:
### BD_BICICLETAS


#### Por: José Roberto Martínez Morales 
#### No. Cuenta: 20191031721

1. Cual es la demografía de los clientes que compran (Sexo, edad) 
2. En que cuarto(Estación: primavera, verano etc...) se venden mas bicicletas
3. ¿La popularidad de las marcas entre los clientes?
4. ¿Cuales categorías se tiene mayor volúmen de venta?
5. ¿Que staff tiene las mayores ventas?
6. ¿Promedio de ventas en diferentes tiempos?
7. ¿El descuento promedio que reciben los clientes?
8. ¿Cuantas bicicletas vende en promedio cada tienda?
9. ¿Que tan voluminosa es la venta de bicicletas eléctricas?
10. En porcentajes, que porcentaje ocupa cada marca de bicicletas en ventas
11. En porcentajes, que porción ocupa cada categoría. 
12. Cantidad del Bicicletas disponibles por tienda.


### Preguntas del Señor Ramón
1. Ventas por periodo de tiempo: Puedes obtener el total de ventas realizadas en un mes, trimestre o año específico.
2. Ventas por producto: Analizar cuáles son los productos más vendidos o que generan más ingresos.
3. Ventas por cliente: Identificar los clientes más frecuentes o los que más gastan.
4. Ventas por tienda: Comparar el desempeño de ventas entre diferentes tiendas.
5. Ventas por empleado: Analizar el desempeño de ventas de los empleados.
6. Ventas por marca: Analizar la preferencia de los clientes por una marca en particular.
7. Ventas por categoría de producto: Ver qué categorías de productos son las más populares.
8. Descuentos aplicados: Analizar el impacto de los descuentos en las ventas totales.
9. Monto total de ventas: Obtener el monto total de ventas en un periodo de tiempo específico.
10. Comparación de ventas año tras año: Ver cómo han cambiado las ventas de un año a otro.


### Preguntas del Señor Ramón editado Y señor José
1. [x] Ventas por periodo de tiempo: Puedes obtener el total de ventas realizadas en un mes, trimestre o año específico.
2. [x] Ventas por producto: Analizar cuáles son los productos más vendidos por mes, trimestre, semestre o año.
3. [x] Ventas por cliente: Identificar los clientes más frecuentes o los que más gastan.
4. [x] Ventas por tienda: Comparar el desempeño de ventas entre diferentes tiendas.
5. [x] Ventas por empleado: Analizar el desempeño de ventas de los empleados.
6. [x] Ventas por marca: Analizar las marcas mas populares.
7. [x]Ventas por categoría de producto: Ver qué categorías de productos son las más populares.
8. [x] Descuentos aplicados: Analizar el impacto de los descuentos en las ventas totales.
9. [x] ¿Promedio de ventas en diferentes tiempos?
10. [x] En porcentajes, que porcentaje ocupa cada marca de bicicletas en ventas


# HECHOVENTAS
* VENTA_ID NUMBER PRIMARY KEY INDEX AUTOINCREMENT 
*  FECHA_ID (SE BASA EN ORDER ID PARA QUE SEA UNICO) FOREIGN KEY NUMBER
* PRODUCTO_ID FOREIGN KEY NUMBER 
* CLIENTE_ID FOREIGN KEY NUMBER
* TIENDA_ID FOREIGN KEY NUMBER
* EMPLEADO_ID FOREIGN KEY NUMBER
* CANTIDAD NUMBER
* PRECIO_UNITARIO NUMBER(10,2)
* DESCUENTO NUMBER NUMBER (4,2) DEFAULT 0 NO NULL
* MONTO_TOTAL NUMBER (10,2) 

