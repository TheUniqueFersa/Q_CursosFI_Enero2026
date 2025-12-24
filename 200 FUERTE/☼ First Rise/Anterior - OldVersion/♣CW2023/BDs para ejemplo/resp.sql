CREATE DATABASE invenciones CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci; 

CREATE TABLE inventores(
    ID_INVENTOR INT PRIMARY KEY AUTO_INCREMENT, 
    nombre_inventor CHAR(100) NOT NULL, 
    empresa CHAR(100) NOT NULL
);

CREATE TABLE producto(
    ID_PRODUCTO INT PRIMARY KEY AUTO_INCREMENT, 
    nombre_producto CHAR(100) NOT NULL, 
    creado_por INT, 
    FOREIGN KEY(creado_por) REFERENCES inventores(ID_INVENTOR)
);
INSERT INTO inventores(nombre_inventor, empresa) VALUES
    ("Bill Gates", "Microsoft"), 
    ("Mark Zuckerberg", "Meta"), 
    ("Jeff Bezos", "Blue Origin"), 
    ("Steve Jobs", "Apple"), 
    ("Larry Ellison", "Oracle");  

INSERT INTO producto(nombre_producto, creado_por) VALUES
    ("Windows", 1),
    ("Facebook", 2), 
    ("Cohete suborbital", 3), 
    ("MacBook", 4), 
    ("Maria DB", 5);