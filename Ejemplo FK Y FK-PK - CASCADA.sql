Create database new_bd;
Use new_bd;

Create table TipoDocumento (
Tipo_Documento varchar(10) NOT NULL,
estado_td Boolean NOT NULL,
primary key (Tipo_Documento)
);

Create table Rol (
Cod_rol INT primary key NOT NULL,
Desc_rol varchar(10) NOT NULL
);

CREATE TABLE persona (
  Num_Documento INT NOT NULL,
  Nombres VARCHAR(100) NOT NULL,
  Apellidos VARCHAR(100) NOT NULL,
  Direccion VARCHAR(50) NOT NULL,
  Telefono INT NULL,
  rol_codRol INT NOT NULL,
  TipoDocumento_Tipo_Documento varchar(10) NOT NULL);


  Alter table persona add PRIMARY KEY (Num_Documento, TipoDocumento_Tipo_Documento);

  Alter table persona add CONSTRAINT fk_Person_TipoDocumento
    FOREIGN KEY (TipoDocumento_Tipo_Documento)
    REFERENCES TipoDocumento (Tipo_Documento)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

Alter table persona add CONSTRAINT fk_Person_Rol
    FOREIGN KEY (rol_codRol)
    REFERENCES Rol (Cod_rol);