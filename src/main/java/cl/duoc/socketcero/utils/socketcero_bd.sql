CREATE DATABASE IF NOT EXISTS socketcero;
USE socketcero;

CREATE TABLE proveedor (
   rut_proveedor varchar(16) primary key not null,
   razon_social varchar(80) not null,
   telefono_contacto int not null
);

CREATE TABLE socketcero.componente (
    codigo_componente varchar(7) primary key,
    nombre varchar(30) not null,
    marca varchar(20) not null,
    precio double not null,
    stock int not null check (stock >= 0),
    fecha_lanzamiento DATE not null,
    estado ENUM('REVISION', 'DISPONIBLE', 'VENDIDO') DEFAULT 'REVISION',
    rut_proveedor varchar(16) not null,
    FOREIGN KEY (rut_proveedor) REFERENCES proveedor(rut_proveedor)
);

CREATE TABLE socketcero.procesador (
    codigo_componente varchar(7) primary key,
    frecuencia_mhz double not null check (frecuencia_mhz >= 512),
    cantidad_nucleos int not null,
    socket varchar(20) not null,
    FOREIGN KEY (codigo_componente) REFERENCES componente(codigo_componente) ON DELETE CASCADE
);

CREATE TABLE socketcero.placa_madre (
    codigo_componente varchar(7) primary key,
    socket varchar(20) not null,
    tipo_memoria ENUM('DDR1', 'DDR2', 'DDR3', 'DDR4', 'DDR5'),
    frecuencia_mhz double not null,
    FOREIGN KEY (codigo_componente) REFERENCES componente(codigo_componente) ON DELETE CASCADE
);

CREATE TABLE socketcero.tarjeta_grafica (
    codigo_componente varchar(7) primary key,
    vram double not null check (vram > 0),
    consumo_mw double not null check (consumo_mw > 0),
    interfaz varchar(10) not null,
    FOREIGN KEY (codigo_componente) REFERENCES componente(codigo_componente) ON DELETE CASCADE
);

CREATE TABLE socketcero.memoria_ram (
    codigo_componente varchar(7) primary key,
    capacidad_gb double not null check (capacidad_gb >= 1),
    velocidad_mhz double not null check (velocidad_mhz >= 512),
    tipo_memoria ENUM('DDR1', 'DDR2', 'DDR3', 'DDR4', 'DDR5'),
    FOREIGN KEY (codigo_componente) REFERENCES componente(codigo_componente) ON DELETE CASCADE
);