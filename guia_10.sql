CREATE TABLE "AC_CLIENTE"  
( "ID_CLIENTE" NUMBER NOT NULL ENABLE,  
  "NOMBRE" VARCHAR2(40 BYTE) NOT NULL ENABLE,  
  "APELLIDO" VARCHAR2(20 BYTE) NOT NULL ENABLE,  
  "FECHANAC" DATE NOT NULL ENABLE,  
  "TIPO_CLIENTE" VARCHAR2(20 BYTE),  
  CONSTRAINT "AC_CLIENTE_PK" PRIMARY KEY ("ID_CLIENTE") 
  ); 

  CREATE TABLE "AC_PRODUCTO"  
( "ID_PRODUCTO" NUMBER NOT NULL ENABLE,  
  "NOMBRE" VARCHAR2(20 BYTE) NOT NULL ENABLE,  
  "PRECIOU" NUMBER DEFAULT 0.0 NOT NULL ENABLE,  
  CONSTRAINT "AC_PRODUCTO_PK" PRIMARY KEY ("ID_PRODUCTO") 
   );  

  CREATE TABLE  "AC_VENTAS"  
   ( "ID_CLIENTE" NUMBER NOT NULL ENABLE,  
 "ID_VENTA" NUMBER NOT NULL ENABLE,  
 "MONTO" NUMBER NOT NULL ENABLE,  
 "FECHA" DATE NOT NULL ENABLE,  
  CONSTRAINT "AC_VENTAS_PK" PRIMARY KEY ("ID_VENTA") 
  );  

  CREATE TABLE "AC_VENTAS_DETALLE"  
( "ID_VENTAS" NUMBER NOT NULL ENABLE,  
  "ID_PRODUCTO" NUMBER NOT NULL ENABLE,  
  "CANTIDAD" NUMBER NOT NULL ENABLE,  
  "PRECIOU" NUMBER NOT NULL ENABLE,  
  "SUBTOTAL" NUMBER NOT NULL ENABLE 
  );

INSERT INTO "AC_CLIENTE" (ID_CLIENTE, NOMBRE, APELLIDO, FECHANAC, TIPO_CLIENTE) VALUES ('1', 'juana', 'perez', TO_DATE('10/12/2001', 'DD/MM/RR'), '01');
INSERT INTO "AC_CLIENTE" (ID_CLIENTE, NOMBRE, APELLIDO, FECHANAC, TIPO_CLIENTE) VALUES ('2', 'marcos', 'san', TO_DATE('1/12/2012', 'DD/MM/RR'), '02');
INSERT INTO "AC_CLIENTE" (ID_CLIENTE, NOMBRE, APELLIDO, FECHANAC, TIPO_CLIENTE) VALUES ('3', 'jose', 'loco', TO_DATE('12/12/2012', 'DD/MM/RR'), '01');
INSERT INTO "AC_CLIENTE" (ID_CLIENTE, NOMBRE, APELLIDO, FECHANAC, TIPO_CLIENTE) VALUES ('4', 'maruc ', 'munoz', TO_DATE('01/05/2006', 'DD/MM/RR'), '02');
INSERT INTO "AC_CLIENTE" (ID_CLIENTE, NOMBRE, APELLIDO, FECHANAC, TIPO_CLIENTE) VALUES ('5', 'jarico', 'manse', TO_DATE('03/03/1999', 'DD/MM/RR'), '01');
INSERT INTO "AC_CLIENTE" (ID_CLIENTE, NOMBRE, APELLIDO, FECHANAC, TIPO_CLIENTE) VALUES ('6', 'mauricio', 'leiva', TO_DATE('05/10/1998', 'DD/MM/RR'), '02');
INSERT INTO "AC_CLIENTE" (ID_CLIENTE, NOMBRE, APELLIDO, FECHANAC, TIPO_CLIENTE) VALUES ('7', 'andre', 'molina', TO_DATE('01/05/2005', 'DD/MM/RR'), '01');
INSERT INTO "AC_CLIENTE" (ID_CLIENTE, NOMBRE, APELLIDO, FECHANAC, TIPO_CLIENTE) VALUES ('8', 'andreita', 'campos', TO_DATE('05/05/1995', 'DD/MM/RR'), '01');
INSERT INTO "AC_CLIENTE" (ID_CLIENTE, NOMBRE, APELLIDO, FECHANAC, TIPO_CLIENTE) VALUES ('9', 'beatiz', 'moreno', TO_DATE('06/06/2006', 'DD/MM/RR'), '01');
INSERT INTO "AC_CLIENTE" (ID_CLIENTE, NOMBRE, APELLIDO, FECHANAC, TIPO_CLIENTE) VALUES ('10', 'jose ', 'garcia', TO_DATE('02/08/2011', 'DD/MM/RR'), '02');

INSERT INTO "AC_PRODUCTO" (ID_PRODUCTO, NOMBRE, PRECIOU) VALUES ('1', 'fanta', 0.50);
INSERT INTO "AC_PRODUCTO" (ID_PRODUCTO, NOMBRE, PRECIOU) VALUES ('2', 'coca cola', 0.55);
INSERT INTO "AC_PRODUCTO" (ID_PRODUCTO, NOMBRE, PRECIOU) VALUES ('3', 'maruchan', 1.00);
INSERT INTO "AC_PRODUCTO" (ID_PRODUCTO, NOMBRE, PRECIOU) VALUES ('4', 'chocolate', 1.00);
INSERT INTO "AC_PRODUCTO" (ID_PRODUCTO, NOMBRE, PRECIOU) VALUES ('5', 'tipo', 0.35);

INSERT INTO "AC_VENTAS" (ID_CLIENTE, ID_VENTA, MONTO, FECHA) VALUES ('1', '1', 20.00, TO_DATE('19/02/2011', 'DD/MM/RR'));
INSERT INTO "AC_VENTAS" (ID_CLIENTE, ID_VENTA, MONTO, FECHA) VALUES ('1', '2', 50.00, TO_DATE('20/12/2012', 'DD/MM/RR'));
INSERT INTO "AC_VENTAS" (ID_CLIENTE, ID_VENTA, MONTO, FECHA) VALUES ('3', '3', 200.00, TO_DATE('20/12/2012', 'DD/MM/RR'));
INSERT INTO "AC_VENTAS" (ID_CLIENTE, ID_VENTA, MONTO, FECHA) VALUES ('5', '4', 1500.00, TO_DATE('12/12/2012', 'DD/MM/RR'));
INSERT INTO "AC_VENTAS" (ID_CLIENTE, ID_VENTA, MONTO, FECHA) VALUES ('3', '5', 200.00, TO_DATE('25/12/2012', 'DD/MM/RR'));
INSERT INTO "AC_VENTAS" (ID_CLIENTE, ID_VENTA, MONTO, FECHA) VALUES ('3', '6', 1200.00, TO_DATE('15/05/2013', 'DD/MM/RR'));
INSERT INTO "AC_VENTAS" (ID_CLIENTE, ID_VENTA, MONTO, FECHA) VALUES ('2', '7', 500.00, TO_DATE('19/02/2012', 'DD/MM/RR'));
INSERT INTO "AC_VENTAS" (ID_CLIENTE, ID_VENTA, MONTO, FECHA) VALUES ('7', '8', 21.00, TO_DATE('25/03/2012', 'DD/MM/RR'));
INSERT INTO "AC_VENTAS" (ID_CLIENTE, ID_VENTA, MONTO, FECHA) VALUES ('9', '9', 5.00, TO_DATE('25/03/2012', 'DD/MM/RR'));
INSERT INTO "AC_VENTAS" (ID_CLIENTE, ID_VENTA, MONTO, FECHA) VALUES ('1', '10', 500000.00, TO_DATE('26/12/2012', 'DD/MM/RR'));

INSERT INTO "AC_VENTAS_DETALLE" (ID_VENTAS, ID_PRODUCTO, CANTIDAD, PRECIOU, SUBTOTAL) VALUES ('1', '1', '20', 0.50, '10');
INSERT INTO "AC_VENTAS_DETALLE" (ID_VENTAS, ID_PRODUCTO, CANTIDAD, PRECIOU, SUBTOTAL) VALUES ('1', '3', '10', 1.00, '10');
INSERT INTO "AC_VENTAS_DETALLE" (ID_VENTAS, ID_PRODUCTO, CANTIDAD, PRECIOU, SUBTOTAL) VALUES ('2', '3', '30', 1.00, '30');
INSERT INTO "AC_VENTAS_DETALLE" (ID_VENTAS, ID_PRODUCTO, CANTIDAD, PRECIOU, SUBTOTAL) VALUES ('2', '4', '20', 1.00, '20');
INSERT INTO "AC_VENTAS_DETALLE" (ID_VENTAS, ID_PRODUCTO, CANTIDAD, PRECIOU, SUBTOTAL) VALUES ('3', '1', '300', 0.50, '150');
INSERT INTO "AC_VENTAS_DETALLE" (ID_VENTAS, ID_PRODUCTO, CANTIDAD, PRECIOU, SUBTOTAL) VALUES ('3', '4', '50', 1.00, '50');
INSERT INTO "AC_VENTAS_DETALLE" (ID_VENTAS, ID_PRODUCTO, CANTIDAD, PRECIOU, SUBTOTAL) VALUES ('4', '2', '2000', 0.55, '1100');
INSERT INTO "AC_VENTAS_DETALLE" (ID_VENTAS, ID_PRODUCTO, CANTIDAD, PRECIOU, SUBTOTAL) VALUES ('4', '4', '400', 1.00, '400');
INSERT INTO "AC_VENTAS_DETALLE" (ID_VENTAS, ID_PRODUCTO, CANTIDAD, PRECIOU, SUBTOTAL) VALUES ('5', '5', '500', 0.35, '175');
INSERT INTO "AC_VENTAS_DETALLE" (ID_VENTAS, ID_PRODUCTO, CANTIDAD, PRECIOU, SUBTOTAL) VALUES ('5', '1', '50', 0.50, '25');
INSERT INTO "AC_VENTAS_DETALLE" (ID_VENTAS, ID_PRODUCTO, CANTIDAD, PRECIOU, SUBTOTAL) VALUES ('6', '5', '2000', 0.35, '700');
INSERT INTO "AC_VENTAS_DETALLE" (ID_VENTAS, ID_PRODUCTO, CANTIDAD, PRECIOU, SUBTOTAL) VALUES ('6', '4', '500', 1.00, '500');
INSERT INTO "AC_VENTAS_DETALLE" (ID_VENTAS, ID_PRODUCTO, CANTIDAD, PRECIOU, SUBTOTAL) VALUES ('7', '3', '200', 1.00, '200');
INSERT INTO "AC_VENTAS_DETALLE" (ID_VENTAS, ID_PRODUCTO, CANTIDAD, PRECIOU, SUBTOTAL) VALUES ('7', '4', '300', 1.00, '400');
INSERT INTO "AC_VENTAS_DETALLE" (ID_VENTAS, ID_PRODUCTO, CANTIDAD, PRECIOU, SUBTOTAL) VALUES ('8', '5', '40', 0.35, '14');
INSERT INTO "AC_VENTAS_DETALLE" (ID_VENTAS, ID_PRODUCTO, CANTIDAD, PRECIOU, SUBTOTAL) VALUES ('8', '1', '14', 0.5, '7');
INSERT INTO "AC_VENTAS_DETALLE" (ID_VENTAS, ID_PRODUCTO, CANTIDAD, PRECIOU, SUBTOTAL) VALUES ('9', '1', '4', 0.5, '2');
INSERT INTO "AC_VENTAS_DETALLE" (ID_VENTAS, ID_PRODUCTO, CANTIDAD, PRECIOU, SUBTOTAL) VALUES ('9', '3', '3', 1.00, '3');
INSERT INTO "AC_VENTAS_DETALLE" (ID_VENTAS, ID_PRODUCTO, CANTIDAD, PRECIOU, SUBTOTAL) VALUES ('10', '5', '900000', 0.35, '315000');
INSERT INTO "AC_VENTAS_DETALLE" (ID_VENTAS, ID_PRODUCTO, CANTIDAD, PRECIOU, SUBTOTAL) VALUES ('10', '1', '370000', 0.50, '185000');

CREATE TABLE "AC_MULTIDIMENSIONAL"
( "PRODUCTO" VARCHAR2(20 BYTE),  
  "MONTO_VENTAS" NUMBER DEFAULT 0,  
  "FECHA" DATE,  
  "TIPO_CLIENTE" VARCHAR2(20 BYTE) 
);

CREATE OR REPLACE PROCEDURE "LLENADO_MULTIDIMENSIONAL" AS 
BEGIN 
  insert into ac_multidimensional (producto, fecha, tipo_cliente, monto_ventas)   
  select t2.nombre, t3.fecha, t1.tipo_cliente,sum(t4.subtotal) from ac_cliente t1 , ac_producto t2 , 
ac_ventas t3 , ac_ventas_detalle t4  where  
  t1.id_cliente= t3.id_cliente and t3.id_venta= t4.id_ventas and t2.id_producto= t4.id_producto group 
by t2.nombre, t3.fecha, t1.tipo_cliente  ; 
END LLENADO_MULTIDIMENSIONAL; 
/

execute LLENADO_MULTIDIMENSIONAL











