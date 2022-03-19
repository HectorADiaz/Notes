CREATE TABLE Personas
(
idPersonas int IDENTITY(1,1) PRIMARY KEY,
primerNombre varchar(255) NOT NULL,
apellido varchar(255) NOT NULL,
ciudad varchar(255),
direccion varchar(255),

)

--------------------------------------------------------------
PROYECTO VENTAREAL
--------------------------------------------------------------
CREATE TABLE cliente(
idCliente int IDENTITY(1,1) PRIMARY KEY,
nombreCliente varchar(30) NOT NULL
)

CREATE TABLE venta(
idVenta int IDENTITY(1,1) PRIMARY KEY,
fecha timestamp NOT NULL,
total decimal(16,2),
idCliente int,
CONSTRAINT fk_cliente FOREIGN KEY (idCliente) REFERENCES cliente (idCliente)
)

CREATE TABLE producto(
idProducto int IDENTITY(1,1) PRIMARY KEY,
nombreProducto varchar(30) NOT NULL,
precioUnitario decimal(16,2) NOT NULL,
costo decimal(16,2) NOT NULL
)

CREATE TABLE concepto(
idconcepto int IDENTITY(1,1) PRIMARY KEY,
idVenta int NOT NULL,
cantidad int NOT NULL,
precioUnitario decimal (16,2) NOT NULL,
importe decimal(16,2) NOT NULL,
idProducto int NOT NULL,
fecha timestamp,
total decimal(8,2)
CONSTRAINT fk_venta FOREIGN KEY (idVenta) REFERENCES venta (idVenta),
CONSTRAINT fk_producto FOREIGN KEY (idProducto) REFERENCES producto (idProducto)
)

