DROP DATABASE IF EXISTS bbt WITH (FORCE); 
CREATE DATABASE bbt ENCODING = 'UTF8';
\connect bbt
CREATE TABLE translations (bid text, meaning text);
INSERT INTO translations VALUES ('CHECK', 'TEST');
