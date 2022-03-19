ALTER TABLE usuario
ADD idStatus int
CONSTRAINT fk_cState FOREIGN KEY (idStatus) REFERENCES cstate (idstatus)

