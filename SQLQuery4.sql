CREATE TABLE Internare(
PACIENTII_ID INT NOT NULL,
PERIOADA_START datetime NOT NULL,
PERIOADA_END datetime NOT NULL,
NumarSalon INT NOT NULL,
CategoriaSalonului varchar(255)
FOREIGN KEY (PACIENTII_ID) REFERENCES PACIENTII(ID)
);