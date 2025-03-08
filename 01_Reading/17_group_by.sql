   /* El GROPU BY es una cláusula que agrupa las filoas con valores iguales en columnas específicas en grupos. Por lo general se utiliza
   con funciones de agregación (COUNT, SUM, AVG, MAX, MIN).*/

   /* Supongamos que en la tabla "orders" tenemos las columnas: "order_id","customer_id", "amount", "order_date".
   Para saber el monto total de las órdenes de cada cliente: */

   SELECT customer_id, SUM(amount), AS total_amount FROM orders GROUP BY customer_id;