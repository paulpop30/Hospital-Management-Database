CREATE TABLE EXTERNARE(
PACIENTII_ID INT NOT NULL,
FOREIGN KEY (PACIENTII_ID) REFERENCES PACIENTII(ID),
CostSpitalizare float  NOT NULL,
DataSpitalizare datetime NOT NULL,
StatusBoala VARCHAR(255)
);