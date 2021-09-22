-- Create a trainer
CREATE TABLE A_TRAINER
	(ID NUMERIC,
	 NAME VARCHAR(255),
	 NUM_BADGES NUMERIC,
	 CONSTRAINT A_TRNR_PK PRIMARY KEY(ID));
	
-- Create a Pokemon
CREATE TABLE A_POKEMON
	(ID NUMERIC,
	 NAME VARCHAR(255),
	 TRAINER NUMERIC,
	 CONSTRAINT A_PKMN_PK PRIMARY KEY(ID));

ALTER TABLE A_POKEMON
	ADD CONSTRAINT UN_PKMN_NAME
	UNIQUE (NAME);

ALTER TABLE A_POKEMON
	ADD CONSTRAINT FK_PKMN_TRNR
	FOREIGN KEY (TRAINER)
	REFERENCES A_TRAINER (ID);


