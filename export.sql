--------------------------------------------------------
-- Archivo creado  - sábado-octubre-05-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BITACORA
--------------------------------------------------------

  CREATE TABLE "BASES"."BITACORA" 
   (	"FECHA" VARCHAR2(50 BYTE), 
	"TIPO_DE_ACCION" VARCHAR2(200 BYTE), 
	"OLDINFO" VARCHAR2(300 BYTE), 
	"NEWINFO" VARCHAR2(300 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BUILT_COMPUTERS_COMPONENTS
--------------------------------------------------------

  CREATE TABLE "BASES"."BUILT_COMPUTERS_COMPONENTS" 
   (	"COMPUTER_ID" NUMBER, 
	"COMPONENT_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BUILT_COMPUTERS_STYLE
--------------------------------------------------------

  CREATE TABLE "BASES"."BUILT_COMPUTERS_STYLE" 
   (	"COMPUTER_ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE , 
	"NAME" VARCHAR2(50 BYTE), 
	"BRAND" VARCHAR2(50 BYTE), 
	"PRICE" NUMBER, 
	"STOCK" NUMBER, 
	"TYPE" VARCHAR2(30 BYTE), 
	"PARTS" VARCHAR2(400 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table COMPONENTS_STYLE
--------------------------------------------------------

  CREATE TABLE "BASES"."COMPONENTS_STYLE" 
   (	"COMPONENT_ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE , 
	"NAME" VARCHAR2(50 BYTE), 
	"BRAND" VARCHAR2(50 BYTE), 
	"PRICE" NUMBER, 
	"STOCK" NUMBER, 
	"RGB" VARCHAR2(10 BYTE), 
	"COLOR" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KEYBOARDS_STYLE
--------------------------------------------------------

  CREATE TABLE "BASES"."KEYBOARDS_STYLE" 
   (	"KEYBOARD_ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE , 
	"NAME" VARCHAR2(50 BYTE), 
	"BRAND" VARCHAR2(50 BYTE), 
	"PRICE" NUMBER, 
	"STOCK" NUMBER, 
	"RGB" VARCHAR2(10 BYTE), 
	"WIRED_WIRELESS" VARCHAR2(10 BYTE), 
	"COLOR" VARCHAR2(20 BYTE), 
	"TYPE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MOUSES_STYLE
--------------------------------------------------------

  CREATE TABLE "BASES"."MOUSES_STYLE" 
   (	"MOUSE_ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE , 
	"NAME" VARCHAR2(50 BYTE), 
	"BRAND" VARCHAR2(50 BYTE), 
	"PRICE" NUMBER, 
	"STOCK" NUMBER, 
	"RGB" VARCHAR2(10 BYTE), 
	"WIRED_WIRELESS" VARCHAR2(10 BYTE), 
	"COLOR" VARCHAR2(20 BYTE), 
	"EXTRA_BUTTONS" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USUARIO
--------------------------------------------------------

  CREATE TABLE "BASES"."USUARIO" 
   (	"CEDULA" NUMBER, 
	"NAME" VARCHAR2(50 BYTE), 
	"LAST_NAME1" VARCHAR2(50 BYTE), 
	"LAST_NAME12" VARCHAR2(50 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"PASSWORD" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
REM INSERTING into BASES.BITACORA
SET DEFINE OFF;
Insert into BASES.BITACORA (FECHA,TIPO_DE_ACCION,OLDINFO,NEWINFO) values ('10-05-2019 15:30:34','Insert','New product added','Mouse ID: 1 Name: Mouse1 Brand: CoolerMaster Price: 10 Stock: 100 RGB: Yes Wired or Wireless: Wired Color: Purple Extra Buttons: 2');
Insert into BASES.BITACORA (FECHA,TIPO_DE_ACCION,OLDINFO,NEWINFO) values ('10-05-2019 15:30:50','Insert','New product added','Mouse ID: 2 Name: Mouse1 Brand: CoolerMaster Price: 10 Stock: 100 RGB: Yes Wired or Wireless: Wired Color: Purple Extra Buttons: 2');
Insert into BASES.BITACORA (FECHA,TIPO_DE_ACCION,OLDINFO,NEWINFO) values ('10-05-2019 15:30:58','Insert','New product added','Mouse ID: 3 Name: Mouse2 Brand: Red Dragon Price: 5 Stock: 1000 RGB: No Wired or Wireless: Wireless Color: Red Extra Buttons: 0');
Insert into BASES.BITACORA (FECHA,TIPO_DE_ACCION,OLDINFO,NEWINFO) values ('10-05-2019 15:31:17','Insert','New product added','Component ID: 1 Name: Part2 Brand: Nvidia Price: 300 Stock: 6 RGB: Yes Color: Black');
Insert into BASES.BITACORA (FECHA,TIPO_DE_ACCION,OLDINFO,NEWINFO) values ('10-05-2019 15:31:25','Insert','New product added','Component ID: 2 Name: Part3 Brand: DELL Price: 200 Stock: 25 RGB: No Color: Silver');
Insert into BASES.BITACORA (FECHA,TIPO_DE_ACCION,OLDINFO,NEWINFO) values ('10-05-2019 15:40:33','Insert','New product added','Computer ID: 1 Name: Dell Inspirion Brand: DELL Price: 1000 Stock: 5 Type: Desktop Parts: Part1,Part2');
Insert into BASES.BITACORA (FECHA,TIPO_DE_ACCION,OLDINFO,NEWINFO) values ('10-05-2019 15:40:40','Insert','New product added','Computer ID: 2 Name: La nave Brand: AlienWare Price: 2000 Stock: 1 Type: Desktop Parts: Part1,Part2');
Insert into BASES.BITACORA (FECHA,TIPO_DE_ACCION,OLDINFO,NEWINFO) values ('10-05-2019 15:40:45','Insert','New product added','Computer ID: 3 Name: La nave2 Brand: Isus Price: 2000 Stock: 1 Type: Desktop Parts: Part1,Part2,');
Insert into BASES.BITACORA (FECHA,TIPO_DE_ACCION,OLDINFO,NEWINFO) values ('10-05-2019 15:43:00','Update','Mouse ID: 2 Name: Mouse1 Brand: CoolerMaster Price: 10 Stock: 100 RGB: Yes Wired or Wireless: Wired Color: Purple Extra Buttons: 2','Mouse ID: 2 Name: Mouse1 Brand: CoolerMaster Price: 10 Stock: 0 RGB: Yes Wired or Wireless: Wired Color: Purple Extra Buttons: 2');
Insert into BASES.BITACORA (FECHA,TIPO_DE_ACCION,OLDINFO,NEWINFO) values ('10-05-2019 15:43:36','Delete','Mouse ID: 1 Name: Mouse1 Brand: CoolerMaster Price: 10 Stock: 100 RGB: Yes Wired or Wireless: Wired Color: Purple Extra Buttons: 2','This product has been deleted');
Insert into BASES.BITACORA (FECHA,TIPO_DE_ACCION,OLDINFO,NEWINFO) values ('10-05-2019 17:01:55','Delete','Computer ID: 1 Name: Dell Inspirion Brand: DELL Price: 1000 Stock: 5 Type: Desktop Parts: Part1,Part2','This product has been deleted');
Insert into BASES.BITACORA (FECHA,TIPO_DE_ACCION,OLDINFO,NEWINFO) values ('10-05-2019 17:01:55','Delete','Computer ID: 2 Name: La nave Brand: AlienWare Price: 2000 Stock: 1 Type: Desktop Parts: Part1,Part2','This product has been deleted');
Insert into BASES.BITACORA (FECHA,TIPO_DE_ACCION,OLDINFO,NEWINFO) values ('10-05-2019 17:01:55','Delete','Computer ID: 3 Name: La nave2 Brand: Isus Price: 2000 Stock: 1 Type: Desktop Parts: Part1,Part2,','This product has been deleted');
Insert into BASES.BITACORA (FECHA,TIPO_DE_ACCION,OLDINFO,NEWINFO) values ('10-05-2019 17:02:18','Insert','New product added','Computer ID: 4 Name: Dell Inspirion Brand: DELL Price: 1000 Stock: 5 Type: Desktop Parts: Part1,Part2');
Insert into BASES.BITACORA (FECHA,TIPO_DE_ACCION,OLDINFO,NEWINFO) values ('10-05-2019 17:02:22','Insert','New product added','Computer ID: 5 Name: La nave Brand: AlienWare Price: 2000 Stock: 1 Type: Desktop Parts: Part1,Part2');
Insert into BASES.BITACORA (FECHA,TIPO_DE_ACCION,OLDINFO,NEWINFO) values ('10-05-2019 17:02:25','Insert','New product added','Computer ID: 6 Name: La nave2 Brand: Isus Price: 2000 Stock: 1 Type: Desktop Parts: Part1,Part2,');
Insert into BASES.BITACORA (FECHA,TIPO_DE_ACCION,OLDINFO,NEWINFO) values ('10-05-2019 17:15:36','Delete','Computer ID: 6 Name: La nave2 Brand: Isus Price: 2000 Stock: 1 Type: Desktop Parts: Part1,Part2,','This product has been deleted');
Insert into BASES.BITACORA (FECHA,TIPO_DE_ACCION,OLDINFO,NEWINFO) values ('10-05-2019 17:15:36','Delete','Computer ID: 4 Name: Dell Inspirion Brand: DELL Price: 1000 Stock: 5 Type: Desktop Parts: Part1,Part2','This product has been deleted');
Insert into BASES.BITACORA (FECHA,TIPO_DE_ACCION,OLDINFO,NEWINFO) values ('10-05-2019 17:15:36','Delete','Computer ID: 5 Name: La nave Brand: AlienWare Price: 2000 Stock: 1 Type: Desktop Parts: Part1,Part2','This product has been deleted');
Insert into BASES.BITACORA (FECHA,TIPO_DE_ACCION,OLDINFO,NEWINFO) values ('10-05-2019 17:16:35','Insert','New product added','Computer ID: 7 Name: Dell Inspirion Brand: DELL Price: 1000 Stock: 5 Type: Desktop Parts: Part1,Part2');
Insert into BASES.BITACORA (FECHA,TIPO_DE_ACCION,OLDINFO,NEWINFO) values ('10-05-2019 17:16:35','Insert','New product added','Computer ID: 8 Name: La nave Brand: AlienWare Price: 2000 Stock: 1 Type: Desktop Parts: Part1,Part2');
Insert into BASES.BITACORA (FECHA,TIPO_DE_ACCION,OLDINFO,NEWINFO) values ('10-05-2019 17:16:35','Insert','New product added','Computer ID: 9 Name: La nave2 Brand: Isus Price: 2000 Stock: 1 Type: Desktop Parts: Part1,Part2,');
REM INSERTING into BASES.BUILT_COMPUTERS_COMPONENTS
SET DEFINE OFF;
REM INSERTING into BASES.BUILT_COMPUTERS_STYLE
SET DEFINE OFF;
Insert into BASES.BUILT_COMPUTERS_STYLE (COMPUTER_ID,NAME,BRAND,PRICE,STOCK,TYPE,PARTS) values ('9','La nave2','Isus','2000','1','Desktop','Part1,Part2,');
Insert into BASES.BUILT_COMPUTERS_STYLE (COMPUTER_ID,NAME,BRAND,PRICE,STOCK,TYPE,PARTS) values ('7','Dell Inspirion','DELL','1000','5','Desktop','Part1,Part2');
Insert into BASES.BUILT_COMPUTERS_STYLE (COMPUTER_ID,NAME,BRAND,PRICE,STOCK,TYPE,PARTS) values ('8','La nave','AlienWare','2000','1','Desktop','Part1,Part2');
REM INSERTING into BASES.COMPONENTS_STYLE
SET DEFINE OFF;
Insert into BASES.COMPONENTS_STYLE (COMPONENT_ID,NAME,BRAND,PRICE,STOCK,RGB,COLOR) values ('1','Part2','Nvidia','300','6','Yes','Black');
Insert into BASES.COMPONENTS_STYLE (COMPONENT_ID,NAME,BRAND,PRICE,STOCK,RGB,COLOR) values ('2','Part3','DELL','200','25','No','Silver');
REM INSERTING into BASES.KEYBOARDS_STYLE
SET DEFINE OFF;
REM INSERTING into BASES.MOUSES_STYLE
SET DEFINE OFF;
Insert into BASES.MOUSES_STYLE (MOUSE_ID,NAME,BRAND,PRICE,STOCK,RGB,WIRED_WIRELESS,COLOR,EXTRA_BUTTONS) values ('2','Mouse1','CoolerMaster','10','0','Yes','Wired','Purple','2');
Insert into BASES.MOUSES_STYLE (MOUSE_ID,NAME,BRAND,PRICE,STOCK,RGB,WIRED_WIRELESS,COLOR,EXTRA_BUTTONS) values ('3','Mouse2','Red Dragon','5','1000','No','Wireless','Red','0');
REM INSERTING into BASES.USUARIO
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index PK_ID_USUARIO
--------------------------------------------------------

  CREATE UNIQUE INDEX "BASES"."PK_ID_USUARIO" ON "BASES"."USUARIO" ("CEDULA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_ID_KEYBOARD
--------------------------------------------------------

  CREATE UNIQUE INDEX "BASES"."PK_ID_KEYBOARD" ON "BASES"."KEYBOARDS_STYLE" ("KEYBOARD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_ID_COMPONENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "BASES"."PK_ID_COMPONENT" ON "BASES"."COMPONENTS_STYLE" ("COMPONENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_ID_COMPUTER
--------------------------------------------------------

  CREATE UNIQUE INDEX "BASES"."PK_ID_COMPUTER" ON "BASES"."BUILT_COMPUTERS_STYLE" ("COMPUTER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_ID_MOUSE
--------------------------------------------------------

  CREATE UNIQUE INDEX "BASES"."PK_ID_MOUSE" ON "BASES"."MOUSES_STYLE" ("MOUSE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table BUILT_COMPUTERS_COMPONENTS
--------------------------------------------------------

  ALTER TABLE "BASES"."BUILT_COMPUTERS_COMPONENTS" MODIFY ("COMPONENT_ID" NOT NULL ENABLE);
  ALTER TABLE "BASES"."BUILT_COMPUTERS_COMPONENTS" MODIFY ("COMPUTER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMPONENTS_STYLE
--------------------------------------------------------

  ALTER TABLE "BASES"."COMPONENTS_STYLE" ADD CONSTRAINT "PK_ID_COMPONENT" PRIMARY KEY ("COMPONENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "BASES"."COMPONENTS_STYLE" MODIFY ("COLOR" NOT NULL ENABLE);
  ALTER TABLE "BASES"."COMPONENTS_STYLE" MODIFY ("RGB" NOT NULL ENABLE);
  ALTER TABLE "BASES"."COMPONENTS_STYLE" MODIFY ("STOCK" NOT NULL ENABLE);
  ALTER TABLE "BASES"."COMPONENTS_STYLE" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "BASES"."COMPONENTS_STYLE" MODIFY ("BRAND" NOT NULL ENABLE);
  ALTER TABLE "BASES"."COMPONENTS_STYLE" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "BASES"."COMPONENTS_STYLE" MODIFY ("COMPONENT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KEYBOARDS_STYLE
--------------------------------------------------------

  ALTER TABLE "BASES"."KEYBOARDS_STYLE" ADD CONSTRAINT "PK_ID_KEYBOARD" PRIMARY KEY ("KEYBOARD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "BASES"."KEYBOARDS_STYLE" MODIFY ("TYPE" NOT NULL ENABLE);
  ALTER TABLE "BASES"."KEYBOARDS_STYLE" MODIFY ("COLOR" NOT NULL ENABLE);
  ALTER TABLE "BASES"."KEYBOARDS_STYLE" MODIFY ("WIRED_WIRELESS" NOT NULL ENABLE);
  ALTER TABLE "BASES"."KEYBOARDS_STYLE" MODIFY ("RGB" NOT NULL ENABLE);
  ALTER TABLE "BASES"."KEYBOARDS_STYLE" MODIFY ("STOCK" NOT NULL ENABLE);
  ALTER TABLE "BASES"."KEYBOARDS_STYLE" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "BASES"."KEYBOARDS_STYLE" MODIFY ("BRAND" NOT NULL ENABLE);
  ALTER TABLE "BASES"."KEYBOARDS_STYLE" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "BASES"."KEYBOARDS_STYLE" MODIFY ("KEYBOARD_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MOUSES_STYLE
--------------------------------------------------------

  ALTER TABLE "BASES"."MOUSES_STYLE" ADD CONSTRAINT "PK_ID_MOUSE" PRIMARY KEY ("MOUSE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "BASES"."MOUSES_STYLE" MODIFY ("EXTRA_BUTTONS" NOT NULL ENABLE);
  ALTER TABLE "BASES"."MOUSES_STYLE" MODIFY ("COLOR" NOT NULL ENABLE);
  ALTER TABLE "BASES"."MOUSES_STYLE" MODIFY ("WIRED_WIRELESS" NOT NULL ENABLE);
  ALTER TABLE "BASES"."MOUSES_STYLE" MODIFY ("RGB" NOT NULL ENABLE);
  ALTER TABLE "BASES"."MOUSES_STYLE" MODIFY ("STOCK" NOT NULL ENABLE);
  ALTER TABLE "BASES"."MOUSES_STYLE" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "BASES"."MOUSES_STYLE" MODIFY ("BRAND" NOT NULL ENABLE);
  ALTER TABLE "BASES"."MOUSES_STYLE" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "BASES"."MOUSES_STYLE" MODIFY ("MOUSE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USUARIO
--------------------------------------------------------

  ALTER TABLE "BASES"."USUARIO" ADD CONSTRAINT "PK_ID_USUARIO" PRIMARY KEY ("CEDULA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "BASES"."USUARIO" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "BASES"."USUARIO" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "BASES"."USUARIO" MODIFY ("LAST_NAME12" NOT NULL ENABLE);
  ALTER TABLE "BASES"."USUARIO" MODIFY ("LAST_NAME1" NOT NULL ENABLE);
  ALTER TABLE "BASES"."USUARIO" MODIFY ("NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BITACORA
--------------------------------------------------------

  ALTER TABLE "BASES"."BITACORA" MODIFY ("NEWINFO" NOT NULL ENABLE);
  ALTER TABLE "BASES"."BITACORA" MODIFY ("OLDINFO" NOT NULL ENABLE);
  ALTER TABLE "BASES"."BITACORA" MODIFY ("FECHA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BUILT_COMPUTERS_STYLE
--------------------------------------------------------

  ALTER TABLE "BASES"."BUILT_COMPUTERS_STYLE" ADD CONSTRAINT "PK_ID_COMPUTER" PRIMARY KEY ("COMPUTER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "BASES"."BUILT_COMPUTERS_STYLE" MODIFY ("PARTS" NOT NULL ENABLE);
  ALTER TABLE "BASES"."BUILT_COMPUTERS_STYLE" MODIFY ("TYPE" NOT NULL ENABLE);
  ALTER TABLE "BASES"."BUILT_COMPUTERS_STYLE" MODIFY ("STOCK" NOT NULL ENABLE);
  ALTER TABLE "BASES"."BUILT_COMPUTERS_STYLE" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "BASES"."BUILT_COMPUTERS_STYLE" MODIFY ("BRAND" NOT NULL ENABLE);
  ALTER TABLE "BASES"."BUILT_COMPUTERS_STYLE" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "BASES"."BUILT_COMPUTERS_STYLE" MODIFY ("COMPUTER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BUILT_COMPUTERS_COMPONENTS
--------------------------------------------------------

  ALTER TABLE "BASES"."BUILT_COMPUTERS_COMPONENTS" ADD CONSTRAINT "FK_ID_COMPONENT" FOREIGN KEY ("COMPONENT_ID")
	  REFERENCES "BASES"."COMPONENTS_STYLE" ("COMPONENT_ID") ENABLE;
  ALTER TABLE "BASES"."BUILT_COMPUTERS_COMPONENTS" ADD CONSTRAINT "FK_ID_COMPUTER" FOREIGN KEY ("COMPUTER_ID")
	  REFERENCES "BASES"."BUILT_COMPUTERS_STYLE" ("COMPUTER_ID") ENABLE;
--------------------------------------------------------
--  DDL for Trigger BITACORA_BUILT_COMPUTERS_STYLE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BASES"."BITACORA_BUILT_COMPUTERS_STYLE" 
before insert or update or delete on Built_Computers_Style
for each row
DECLARE
begin
    if inserting then
          insert into Bitacora (Fecha, Tipo_de_accion, oldInfo, newInfo)
        values(TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS'), 'Insert', 'New product added', 
              'Computer ID: ' || :new.Computer_ID || ' Name: ' || :new.Name || ' Brand: ' || :new.Brand || ' Price: ' || :new.Price || ' Stock: ' || :new.Stock || ' Type: ' || :new.Type || ' Parts: ' || :new.Parts);
    end if;
    if updating then
    insert into Bitacora (Fecha, Tipo_de_accion, oldInfo, newInfo) values(TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS'), 'Insert', 'New product added', 'Computer ID: ' || :new.Computer_ID || ' Name: ' || :new.Name || ' Brand: ' || :new.Brand || ' Price: ' || :new.Price || ' Stock: ' || :new.Stock || ' Type: ' || :new.Type || ' Parts: ' || :new.Parts);
    normalizar();
    end if;
    if deleting then
       insert into Bitacora (Fecha, Tipo_de_accion, oldInfo, newInfo)
        values(TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS'), 'Delete', 
               'Computer ID: ' || :old.Computer_ID || ' Name: ' || :old.Name || ' Brand: ' || :old.Brand || ' Price: ' || :old.Price || ' Stock: ' || :old.Stock || ' Type: ' || :old.Type || ' Parts: ' || :old.Parts,
	       'This product has been deleted');
    end if;
end;
/
ALTER TRIGGER "BASES"."BITACORA_BUILT_COMPUTERS_STYLE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BITACORA_COMPONENTS_STYLE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BASES"."BITACORA_COMPONENTS_STYLE" 
before insert or update or delete on Components_Style
for each row
DECLARE
begin
    if inserting then
       insert into Bitacora (Fecha, Tipo_de_accion, oldInfo, newInfo)
        values(TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS'), 'Insert', 'New product added', 
              'Component ID: ' || :new.Component_ID || ' Name: ' || :new.Name || ' Brand: ' || :new.Brand || ' Price: ' || :new.Price || ' Stock: ' || :new.Stock || ' RGB: ' || :new.RGB || ' Color: ' || :new.Color);
    end if;
    if updating then
       insert into Bitacora (Fecha, Tipo_de_accion, oldInfo, newInfo)
        values(TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS'), 'Update',
	       'Component ID: ' || :old.Component_ID || ' Name: ' || :old.Name || ' Brand: ' || :old.Brand || ' Price: ' || :old.Price || ' Stock: ' || :old.Stock || ' RGB: ' || :old.RGB || ' Color: ' || :old.Color,
               'Component ID: ' || :new.Component_ID || ' Name: ' || :new.Name || ' Brand: ' || :new.Brand || ' Price: ' || :new.Price || ' Stock: ' || :new.Stock || ' RGB: ' || :new.RGB || ' Color: ' || :new.Color);
    end if;
    if deleting then
          insert into Bitacora (Fecha, Tipo_de_accion, oldInfo, newInfo)
        values(TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS'), 'Delete', 
               'Component ID: ' || :old.Component_ID || ' Name: ' || :old.Name || ' Brand: ' || :old.Brand || ' Price: ' || :old.Price || ' Stock: ' || :old.Stock || ' RGB: ' || :old.RGB || ' Color: ' || :old.Color,
	       'This product has been deleted');
    end if;
end;
/
ALTER TRIGGER "BASES"."BITACORA_COMPONENTS_STYLE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BITACORA_KEYBOARDS_STYLE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BASES"."BITACORA_KEYBOARDS_STYLE" 
before insert or update or delete on Keyboards_Style
for each row
DECLARE
begin
    if inserting then
      insert into Bitacora (Fecha, Tipo_de_accion, oldInfo, newInfo)
        values(TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS'), 'Insert', 'New product added', 
              'Keyboard ID: ' || :new.Keyboard_ID || ' Name: ' || :new.Name || ' Brand: ' || :new.Brand || ' Price: ' || :new.Price || ' Stock: ' || :new.Stock || ' RGB: ' || :new.RGB || ' Wired or Wireless: ' || :new.Wired_Wireless || ' Color: ' || :new.Color || ' Type: ' || :new.Type);
    end if;
    if updating then
      insert into Bitacora (Fecha, Tipo_de_accion, oldInfo, newInfo)
        values(TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS'), 'Update',
	       'Keyboard ID: ' || :old.Keyboard_ID || ' Name: ' || :old.Name || ' Brand: ' || :old.Brand || ' Price: ' || :old.Price || ' Stock: ' || :old.Stock || ' RGB: ' || :old.RGB || ' Wired or Wireless: ' || :old.Wired_Wireless || ' Color: ' || :old.Color || ' Type: ' || :old.Type,
               'Keyboard ID: ' || :new.Keyboard_ID || ' Name: ' || :new.Name || ' Brand: ' || :new.Brand || ' Price: ' || :new.Price || ' Stock: ' || :new.Stock || ' RGB: ' || :new.RGB || ' Wired or Wireless: ' || :new.Wired_Wireless || ' Color: ' || :new.Color || ' Type: ' || :new.Type);
    end if;
    if deleting then
      insert into Bitacora (Fecha, Tipo_de_accion, oldInfo, newInfo)
        values(TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS'), 'Delete', 
               'Keyboard ID: ' || :old.Keyboard_ID || ' Name: ' || :old.Name || ' Brand: ' || :old.Brand || ' Price: ' || :old.Price || ' Stock: ' || :old.Stock || ' RGB: ' || :old.RGB || ' Wired or Wireless: ' || :old.Wired_Wireless || ' Color: ' || :old.Color || ' Type: ' || :old.Type,
	       'This product has been deleted');
    end if;
end;
/
ALTER TRIGGER "BASES"."BITACORA_KEYBOARDS_STYLE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BITACORA_MOUSES_STYLE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "BASES"."BITACORA_MOUSES_STYLE" 
before insert or update or delete on Mouses_Style
for each row
DECLARE
begin
    if inserting then
       insert into Bitacora (Fecha, Tipo_de_accion, oldInfo, newInfo)
        values(TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS'), 'Insert', 'New product added', 
              'Mouse ID: ' || :new.Mouse_ID || ' Name: ' || :new.Name || ' Brand: ' || :new.Brand || ' Price: ' || :new.Price || ' Stock: ' || :new.Stock || ' RGB: ' || :new.RGB || ' Wired or Wireless: ' || :new.Wired_Wireless || ' Color: ' || :new.Color || ' Extra Buttons: ' || :new.Extra_Buttons);
       end if;
    if updating then
        insert into Bitacora (Fecha, Tipo_de_accion, oldInfo, newInfo)
        values(TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS'), 'Update',
	       'Mouse ID: ' || :old.Mouse_ID || ' Name: ' || :old.Name || ' Brand: ' || :old.Brand || ' Price: ' || :old.Price || ' Stock: ' || :old.Stock || ' RGB: ' || :old.RGB || ' Wired or Wireless: ' || :old.Wired_Wireless || ' Color: ' || :old.Color || ' Extra Buttons: ' || :old.Extra_Buttons,
               'Mouse ID: ' || :new.Mouse_ID || ' Name: ' || :new.Name || ' Brand: ' || :new.Brand || ' Price: ' || :new.Price || ' Stock: ' || :new.Stock || ' RGB: ' || :new.RGB || ' Wired or Wireless: ' || :new.Wired_Wireless || ' Color: ' || :new.Color || ' Extra Buttons: ' || :new.Extra_Buttons);
        end if;
    if deleting then
       insert into Bitacora (Fecha, Tipo_de_accion, oldInfo, newInfo)
        values(TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS'), 'Delete', 
               'Mouse ID: ' || :old.Mouse_ID || ' Name: ' || :old.Name || ' Brand: ' || :old.Brand || ' Price: ' || :old.Price || ' Stock: ' || :old.Stock || ' RGB: ' || :old.RGB || ' Wired or Wireless: ' || :old.Wired_Wireless || ' Color: ' || :old.Color || ' Extra Buttons: ' || :old.Extra_Buttons,
	       'This product has been deleted');
       end if;
end;
/
ALTER TRIGGER "BASES"."BITACORA_MOUSES_STYLE" ENABLE;
--------------------------------------------------------
--  DDL for Function FIND_PART
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "BASES"."FIND_PART" (temp_Part varchar2) return number is
    temp_Part_id number;
        begin

            SELECT Component_ID INTO temp_Part_id from Components_Style where Name = trim(temp_Part);
            return (temp_Part_id);

            exception
            when NO_DATA_FOUND then
                return 0;
        end;

/
--------------------------------------------------------
--  DDL for Procedure INSERT_BCC
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "BASES"."INSERT_BCC" (temp_ComputerID number,temp_PartID number) is
    temp_Computer_id number;
    temp_Part_id number;
        begin

            SELECT Computer_ID,Component_ID INTO temp_Computer_id,temp_Part_id from Built_Computers_Components where Computer_ID = temp_ComputerID and Component_ID = temp_PartID;

            exception
            when NO_DATA_FOUND then
                insert into Built_Computers_Components values(temp_ComputerID,temp_PartID);
        end;

/
--------------------------------------------------------
--  DDL for Procedure NORMALIZAR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "BASES"."NORMALIZAR" as
    temp_Parts varchar(400);
    temp_Part varchar(60);
    temp_PartID number;
    temp_ComputerID number;
    begin
        for item in (select * from Built_Computers_Style) loop
            temp_ComputerID := trim(item.Computer_ID);
            temp_Parts := trim(item.Parts);
            for P in (select regexp_substr(temp_Parts, '[^,]+', 1, level) as Part from dual connect by regexp_substr(temp_Parts, '[^,]+', 1, level) is not null)
            loop
                temp_Part := trim(P.Part);
                temp_PartID  := find_Part(temp_Part);
                Insert_BCC(temp_ComputerID,temp_PartID);
            end loop;

        end loop;
    end;

/
