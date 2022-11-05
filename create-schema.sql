create database bro;

\c bro ;


CREATE TABLE USERS(
   ID INT PRIMARY KEY NOT NULL,
   USERNAME  TEXT     NOT NULL UNIQUE,
   PASSWORD  TEXT     NOT NULL
);

CREATE TABLE BROS (
   ID INT NOT NULL,
   BRO INT NOT NULL,
   UNIQUE(ID, BRO)
);

CREATE TABLE MESSAGES (
    FR_ID INT NOT NULL,
    TO_ID INT NOT NULL,
    TIME timestamp without time zone
);

CREATE INDEX MESSAGES_FR_INDEX
ON MESSAGES (FR_ID, TIME);

CREATE INDEX MESSAGES_TO_INDEX
ON MESSAGES (TO_ID, TIME);

