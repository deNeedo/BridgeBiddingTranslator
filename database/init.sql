DROP DATABASE IF EXISTS bbt WITH (FORCE); 
CREATE DATABASE bbt ENCODING = 'UTF8';
\connect bbt
CREATE TABLE translations (bid text, meaning text);
-- OPENINGS
INSERT INTO translations VALUES ('1C', '12 to 17 points, at least five clubs');
INSERT INTO translations VALUES ('1C', '12 to 17 points, no five-card suit');
INSERT INTO translations VALUES ('1C', '18 to 22 points, any hand');
INSERT INTO translations VALUES ('1D', '12 to 17 points, at least five diamonds');
INSERT INTO translations VALUES ('1H', '12 to 17 points, at least five hearts');
INSERT INTO translations VALUES ('1S', '12 to 17 points, at least five spades');
INSERT INTO translations VALUES ('1NT', '15 to 17 points, balanced hand without SHORTNESS in any suit, can have five-card YOUNGER suit');
INSERT INTO translations VALUES ('2C', '23+ points, any hand, forcing to ENDGAME');
INSERT INTO translations VALUES ('2D', '7 to 11 points, six diamonds, no four-card OLDER suit');
INSERT INTO translations VALUES ('2H', '7 to 11 points, six hearts, less than 4 spades');
INSERT INTO translations VALUES ('2S', '7 to 11 points, six spades, less than 4 hearts');
INSERT INTO translations VALUES ('2NT', '23 to 24 points, balanced hand without SHORTNESS in any suit, no five-card suit');
INSERT INTO translations VALUES ('3C', '6 to 10 points, seven+ clubs');
INSERT INTO translations VALUES ('3D', '6 to 10 points, seven+ diamonds');
INSERT INTO translations VALUES ('3H', '6 to 10 points, seven+ hearts');
INSERT INTO translations VALUES ('3S', '6 to 10 points, seven+ spades');
INSERT INTO translations VALUES ('3NT', 'seven cards in YOUNGER suit headed by ace, king and queen at minimum');
INSERT INTO translations VALUES ('4C', 'seven+ clubs including 2+ figures in this suit');
INSERT INTO translations VALUES ('4D', 'seven+ clubs including 2+ figures in this suit');
INSERT INTO translations VALUES ('4H', 'seven+ clubs including 2+ figures in this suit');
INSERT INTO translations VALUES ('4S', 'seven+ clubs including 2+ figures in this suit');
-- 1C ANSWERS

