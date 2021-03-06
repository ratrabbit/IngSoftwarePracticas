-- Database: postgres

-- DROP DATABASE postgres;

CREATE DATABASE postgres
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'es_MX.UTF-8'
       LC_CTYPE = 'es_MX.UTF-8'
       CONNECTION LIMIT = -1;

COMMENT ON DATABASE postgres
  IS 'default administrative connection database';

-- Table: usuarios

-- DROP TABLE usuarios;

CREATE TABLE usuarios
(
  id serial NOT NULL,
  nombre text,
  apellidos text,
  fechainicio date,
  CONSTRAINT usuarios_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE usuarios
  OWNER TO postgres;


﻿-- Table: cuentas

-- DROP TABLE cuentas;

CREATE TABLE cuentas
(
  idusuario integer NOT NULL,
  usuario text,
  pass text,
  CONSTRAINT cuenta_id PRIMARY KEY (idusuario),
  CONSTRAINT cuenta_usuario FOREIGN KEY (idusuario)
      REFERENCES usuarios (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE cuentas
  OWNER TO postgres;

-- Index: fki_cuenta_usuario

-- DROP INDEX fki_cuenta_usuario;

CREATE INDEX fki_cuenta_usuario
  ON cuentas
  USING btree
  (idusuario);

