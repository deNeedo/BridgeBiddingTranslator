DROP DATABASE IF EXISTS bbt WITH (FORCE); 
CREATE DATABASE bbt ENCODING = 'UTF8';
\connect bbt
CREATE TABLE translations (bid text, meaning text);
-- OPENINGS
INSERT INTO translations VALUES ('1 ♣', '12 to 17 points, at least five clubs');
INSERT INTO translations VALUES ('1 ♣', '12 to 17 points, no five-card suit');
INSERT INTO translations VALUES ('1 ♣', '18 to 22 points, any hand');
INSERT INTO translations VALUES ('1 ♦', '12 to 17 points, at least five diamonds');
INSERT INTO translations VALUES ('1 ♥', '12 to 17 points, at least five hearts');
INSERT INTO translations VALUES ('1 ♠', '12 to 17 points, at least five spades');
INSERT INTO translations VALUES ('1 NT', '15 to 17 points, balanced hand without SHORTNESS in any suit, can have five-card YOUNGER suit');
INSERT INTO translations VALUES ('2 ♣', '23+ points, any hand, forcing to ENDGAME');
INSERT INTO translations VALUES ('2 ♦', '7 to 11 points, six diamonds, no four-card OLDER suit');
INSERT INTO translations VALUES ('2 ♥', '7 to 11 points, six hearts, less than 4 spades');
INSERT INTO translations VALUES ('2 ♠', '7 to 11 points, six spades, less than 4 hearts');
INSERT INTO translations VALUES ('2 NT', '23 to 24 points, balanced hand without SHORTNESS in any suit, no five-card suit');
INSERT INTO translations VALUES ('3 ♣', '6 to 10 points, seven+ clubs');
INSERT INTO translations VALUES ('3 ♦', '6 to 10 points, seven+ diamonds');
INSERT INTO translations VALUES ('3 ♥', '6 to 10 points, seven+ hearts');
INSERT INTO translations VALUES ('3 ♠', '6 to 10 points, seven+ spades');
INSERT INTO translations VALUES ('3 NT', 'seven cards in YOUNGER suit headed by ace, king and queen at minimum');
INSERT INTO translations VALUES ('4 ♣', 'seven+ clubs including 2+ figures in this suit');
INSERT INTO translations VALUES ('4 ♦', 'seven+ clubs including 2+ figures in this suit');
INSERT INTO translations VALUES ('4 ♥', 'seven+ clubs including 2+ figures in this suit');
INSERT INTO translations VALUES ('4 ♠', 'seven+ clubs including 2+ figures in this suit');
-- 1 ♣ ANSWERS
INSERT INTO translations VALUES ('1 ♣->1 ♦', '0 to 6 POINTS, any hand');
INSERT INTO translations VALUES ('1 ♣->1 ♥', '7+ POINTS, 4+ hearts');
INSERT INTO translations VALUES ('1 ♣->1 ♠', '7+ POINTS, 4+ spades');
INSERT INTO translations VALUES ('1 ♣->1 NT', '7 to 10 POINTS, no four-card OLDER suit, can have five-card YOUNGER suit');
INSERT INTO translations VALUES ('1 ♣->2 ♣', '10+ POINTS, 5+ clubs');
INSERT INTO translations VALUES ('1 ♣->2 ♦', '10+ POINTS, 5+ diamonds');
INSERT INTO translations VALUES ('1 ♣->2 ♥', '12+ POINTS, 5+ hearts');
INSERT INTO translations VALUES ('1 ♣->2 ♠', '12+ POINTS, 5+ spades');
INSERT INTO translations VALUES ('1 ♣->2 NT', '11 to 12 POINTS, no four-card OLDER suit, invitation to 3 NT');
INSERT INTO translations VALUES ('1 ♣->3 NT', '13 to 16 POINTS, no four-card OLDER suit, no five-card YOUNGER suit');
-- 1 ♣ -> 1 ♦ ANSWERS
INSERT INTO translations VALUES ('1 ♣->1 ♦->1 ♥', '3+ hearts');
INSERT INTO translations VALUES ('1 ♣->1 ♦->1 ♠', '3+ spades');
INSERT INTO translations VALUES ('1 ♣->1 ♦->1 NT', '18 to 20 points, balanced hand, stayman');
INSERT INTO translations VALUES ('1 ♣->1 ♦->2 ♣', '5+ clubs');
INSERT INTO translations VALUES ('1 ♣->1 ♦->2 ♦', '18 to 22 points, 5 diamonds');
INSERT INTO translations VALUES ('1 ♣->1 ♦->2 ♥', '18 to 22 points, 5 hearts');
INSERT INTO translations VALUES ('1 ♣->1 ♦->2 ♠', '18 to 22 points, 5 spades');
INSERT INTO translations VALUES ('1 ♣->1 ♦->2 NT', '21 to 22 points, balanced hand, stayman');
INSERT INTO translations VALUES ('1 ♣->1 ♦->3 ♣', '18 to 22 points, 6+ clubs');
INSERT INTO translations VALUES ('1 ♣->1 ♦->3 ♦', '18 to 22 points, 6+ diamonds');
INSERT INTO translations VALUES ('1 ♣->1 ♦->3 ♥', '18 to 22 points, 6+ hearts');
INSERT INTO translations VALUES ('1 ♣->1 ♦->3 ♠', '18 to 22 points, 6+ spades');
-- 1 ♣ -> 1 ♥ ANSWERS
INSERT INTO translations VALUES ('1 ♣->1 ♥->1 ♠', '4 spades, less than 4 hearts, FORCING');
INSERT INTO translations VALUES ('1 ♣->1 ♥->1 NT', '12 to 14 points, no four-card OLDER suit');
INSERT INTO translations VALUES ('1 ♣->1 ♥->2 ♣', '5 clubs');
INSERT INTO translations VALUES ('1 ♣->1 ♥->2 ♦', '18 to 22 points, 3 hearts, reversal');
INSERT INTO translations VALUES ('1 ♣->1 ♥->2 ♥', '12 to 14 points, 4 hearts');
INSERT INTO translations VALUES ('1 ♣->1 ♥->2 ♠', '18 to 22 points, 5 spades, FORCING');
INSERT INTO translations VALUES ('1 ♣->1 ♥->2 NT', '18 to 22 points, less than 3 hearts, FORCING');
INSERT INTO translations VALUES ('1 ♣->1 ♥->3 NT', 'endgame');
INSERT INTO translations VALUES ('1 ♣->1 ♥->4 ♥', 'endgame');
-- 1 ♣ -> 1 ♠ ANSWERS
INSERT INTO translations VALUES ('1 ♣->1 ♠->1 NT', '12 to 14 points, less than 4 spades, can have 4 hearts');
INSERT INTO translations VALUES ('1 ♣->1 ♠->2 ♣', '5 clubs');
INSERT INTO translations VALUES ('1 ♣->1 ♠->2 ♦', '18 to 22 points, 3 spades, reversal');
INSERT INTO translations VALUES ('1 ♣->1 ♠->2 ♥', '18 to 22 points, 5 hearts, FORCING');
INSERT INTO translations VALUES ('1 ♣->1 ♠->2 ♠', '12 to 14 points, 4 spades');
INSERT INTO translations VALUES ('1 ♣->1 ♠->2 NT', '18 to 22 points, less than 3 spades, FORCING');
INSERT INTO translations VALUES ('1 ♣->1 ♠->3 NT', 'endgame');
INSERT INTO translations VALUES ('1 ♣->1 ♠->4 ♠', 'endgame');
-- 1 ♥ -> reversal ANSWERS
INSERT INTO translations VALUES ('1 ♣->1 ♥->2 ♦->2 ♥', '7 to 10 points, 4 hearts');
INSERT INTO translations VALUES ('1 ♣->1 ♥->2 ♦->2 ♠', '11+ points, 4 hearts');
INSERT INTO translations VALUES ('1 ♣->1 ♥->2 ♦->2 NT', '7 to 10 points, 5 hearts');
INSERT INTO translations VALUES ('1 ♣->1 ♥->2 ♦->3 ♣', '11+ points, 5 hearts');
INSERT INTO translations VALUES ('1 ♣->1 ♥->2 ♦->3 ♦', '7 to 10 points, 6 hearts');
INSERT INTO translations VALUES ('1 ♣->1 ♥->2 ♦->3 ♥', '11+ points, 6 hearts');
INSERT INTO translations VALUES ('1 ♣->1 ♥->2 ♦->3 ♠', '7 to 10 points, 7 hearts');
INSERT INTO translations VALUES ('1 ♣->1 ♥->2 ♦->3 NT', '11+ points, 7 hearts');
-- 1 ♠ -> reversal ANSWERS
INSERT INTO translations VALUES ('1 ♣->1 ♠->2 ♦->2 ♥', '7 to 10 points, 4 spades');
INSERT INTO translations VALUES ('1 ♣->1 ♠->2 ♦->2 ♠', '11+ points, 4 spades');
INSERT INTO translations VALUES ('1 ♣->1 ♠->2 ♦->2 NT', '7 to 10 points, 5 spades');
INSERT INTO translations VALUES ('1 ♣->1 ♠->2 ♦->3 ♣', '11+ points, 5 spades');
INSERT INTO translations VALUES ('1 ♣->1 ♠->2 ♦->3 ♦', '7 to 10 points, 6 spades');
INSERT INTO translations VALUES ('1 ♣->1 ♠->2 ♦->3 ♥', '11+ points, 6 spades');
INSERT INTO translations VALUES ('1 ♣->1 ♠->2 ♦->3 ♠', '7 to 10 points, 7 spades');
INSERT INTO translations VALUES ('1 ♣->1 ♠->2 ♦->3 NT', '11+ points, 7 spades');
-- 1 ♦ ANSWERS
INSERT INTO translations VALUES ('1 ♦->1 ♥', '7+ points, 4+ hearts, FORCING');
INSERT INTO translations VALUES ('1 ♦->1 ♠', '7+ points, 4+ spades, FORCING');
INSERT INTO translations VALUES ('1 ♦->1 NT', '7 to 10 points, no four-card OLDER suit');
INSERT INTO translations VALUES ('1 ♦->2 ♣', '10+ points, 5+ clubs');
INSERT INTO translations VALUES ('1 ♦->2 ♦', '7 to 9 points, 3+ diamonds');
INSERT INTO translations VALUES ('1 ♦->2 ♥', '12+ points, 5+ hearts, FORCING to endgame');
INSERT INTO translations VALUES ('1 ♦->2 ♠', '12+ points, 5+ spades, FORCING to endgame');
INSERT INTO translations VALUES ('1 ♦->2 NT', '11 to 12 points, no four-card OLDER suit, invitation to 3 NT');
INSERT INTO translations VALUES ('1 ♦->3 NT', '13 to 16 points, no four-card OLDER suit and no five-card YOUNGER suit');
-- 1 ♦ -> 1 ♥ ANSWERS
INSERT INTO translations VALUES ('1 ♦->1 ♥->1 ♠', '4+ spades, less than 4 hearts, FORCING');
INSERT INTO translations VALUES ('1 ♦->1 ♥->1 NT', '12 to 14 points, no four-card OLDER suit');
INSERT INTO translations VALUES ('1 ♦->1 ♥->2 ♣', '12 to 14 points, 5 diamonds, 4+ clubs');
INSERT INTO translations VALUES ('1 ♦->1 ♥->2 ♦', '12 to 14 points, 6 diamonds');
INSERT INTO translations VALUES ('1 ♦->1 ♥->2 ♥', '12 to 14 points, 4 hearts');
INSERT INTO translations VALUES ('1 ♦->1 ♥->2 ♠', '15 to 17 points, 4 spades, 5 diamonds, FORCING');
INSERT INTO translations VALUES ('1 ♦->1 ♥->2 NT', '15 to 17 points, no four-card OLDER SUIT, FORCING');
INSERT INTO translations VALUES ('1 ♦->1 ♥->3 ♣', '15 to 17 points, 5 clubs, 5 diamonds');
INSERT INTO translations VALUES ('1 ♦->1 ♥->3 ♦', '15 to 17 points, 6 diamonds with 2+ figures, FORCING');
INSERT INTO translations VALUES ('1 ♦->1 ♥->3 NT', 'endgame');
INSERT INTO translations VALUES ('1 ♦->1 ♥->4 ♥', 'endgame');
-- 1 ♦ -> 1 ♠ ANSWERS
INSERT INTO translations VALUES ('1 ♦->1 ♠->1 NT', '12 to 14 points, less than 4 spades');
INSERT INTO translations VALUES ('1 ♦->1 ♠->2 ♣', '12 to 14 points, 5 diamonds, 4+ clubs');
INSERT INTO translations VALUES ('1 ♦->1 ♠->2 ♦', '12 to 14 points, 6 diamonds');
INSERT INTO translations VALUES ('1 ♦->1 ♠->2 ♥', '15 to 17 points, 4 hearts, 5 diamonds, FORCING');
INSERT INTO translations VALUES ('1 ♦->1 ♠->2 ♠', '12 to 14 points, 4 spades');
INSERT INTO translations VALUES ('1 ♦->1 ♠->2 NT', '15 to 17 points, no four-card OLDER SUIT, FORCING');
INSERT INTO translations VALUES ('1 ♦->1 ♠->3 ♣', '15 to 17 points, 5 clubs, 5 diamonds');
INSERT INTO translations VALUES ('1 ♦->1 ♠->3 ♦', '15 to 17 points, 6 diamonds with 2+ figures, FORCING');
INSERT INTO translations VALUES ('1 ♦->1 ♠->3 NT', 'endgame');
INSERT INTO translations VALUES ('1 ♦->1 ♠->4 ♠', 'endgame');
-- 1 ♥ ANSWERS
INSERT INTO translations VALUES ('1 ♥->1 ♠', '7+ points, 4+ spades, FORCING');
INSERT INTO translations VALUES ('1 ♥->1 NT', '7 to 10 points, less than 4 spades, no hearts FIT');
INSERT INTO translations VALUES ('1 ♥->2 ♣', '10+ points, 5+ clubs, FORCING');
INSERT INTO translations VALUES ('1 ♥->2 ♦', '10+ points, 5+ diamonds, FORCING');
INSERT INTO translations VALUES ('1 ♥->2 ♥', '7 to 10 points, hearts FIT');
INSERT INTO translations VALUES ('1 ♥->2 ♠', '12+ points, 5+ spades, FORCING');
INSERT INTO translations VALUES ('1 ♥->2 NT', '11 to 12 points, less than 4 spades, no hearts FIT, FORCING');
INSERT INTO translations VALUES ('1 ♥->3 ♥', '12 to 16 points, hearts FIT, FORCING');
INSERT INTO translations VALUES ('1 ♥->3 NT', 'endgame');
INSERT INTO translations VALUES ('1 ♥->4 ♥', 'endgame');
-- 1 ♥ -> 1 ♠ ANSWERS
INSERT INTO translations VALUES ('1 ♥->1 ♠->1 NT', '12 to 14 points, less than 4 spades');
INSERT INTO translations VALUES ('1 ♥->1 ♠->2 ♣', '5 hearts, 4+ clubs, FORCING');
INSERT INTO translations VALUES ('1 ♥->1 ♠->2 ♦', '5 hearts, 5 diamonds, FORCING');
INSERT INTO translations VALUES ('1 ♥->1 ♠->2 ♥', '12 to 14 points, 6 hearts');
INSERT INTO translations VALUES ('1 ♥->1 ♠->2 ♠', '5 hearts, 4 spades');
INSERT INTO translations VALUES ('1 ♥->1 ♠->2 NT', '15 to 17 points, less than 4 spades, FORCING');
INSERT INTO translations VALUES ('1 ♥->1 ♠->3 ♣', '15 to 17 points, 5 hearts, 5 clubs');
INSERT INTO translations VALUES ('1 ♥->1 ♠->3 ♦', '15 to 17 points, 5 hearts, 5 diamonds');
INSERT INTO translations VALUES ('1 ♥->1 ♠->3 ♥', '15 to 17 points, 6 hearts');
INSERT INTO translations VALUES ('1 ♥->1 ♠->3 NT', 'endgame');
INSERT INTO translations VALUES ('1 ♥->1 ♠->4 ♥', '7 hearts, endgame');
INSERT INTO translations VALUES ('1 ♥->1 ♠->4 ♥', 'endgame');
-- 1 ♥ -> 2 ♣ ANSWERS
INSERT INTO translations VALUES ('1 ♥->2 ♣->2 ♦', '5 hearts, 4+ diamonds, FORCING');
INSERT INTO translations VALUES ('1 ♥->2 ♣->2 ♥', '12 to 14 points, 6 hearts');
INSERT INTO translations VALUES ('1 ♥->2 ♣->2 ♠', '15 to 17 points, 5 hearts, 4 spades, FORCING');
INSERT INTO translations VALUES ('1 ♥->2 ♣->2 NT', '12 to 14 points, 5 hearts, 3-3-2 in outher suits');
INSERT INTO translations VALUES ('1 ♥->2 ♣->3 ♣', '5 hearts, 4 clubs');
INSERT INTO translations VALUES ('1 ♥->2 ♣->3 ♦', '15 to 17 points, 5 hearts, 5 diamonds');
INSERT INTO translations VALUES ('1 ♥->2 ♣->3 ♥', '15 to 17 points, 6 hearts');
INSERT INTO translations VALUES ('1 ♥->2 ♣->3 NT', 'endgame');
INSERT INTO translations VALUES ('1 ♥->2 ♣->4 ♥', '12 to 14 points, 7 hearts, endgame');
-- 1 ♥ -> 2 ♦ ANSWERS
INSERT INTO translations VALUES ('1 ♥->2 ♦->2 ♥', '12 to 14 points, 6 hearts');
INSERT INTO translations VALUES ('1 ♥->2 ♣->2 ♠', '15 to 17 points, 5 hearts, 4 spades, FORCING');
INSERT INTO translations VALUES ('1 ♥->2 ♣->2 NT', '12 to 14 points, 5 hearts, 3-3-2 in outher suits');
INSERT INTO translations VALUES ('1 ♥->2 ♣->3 ♣', '15 to 17 points, 5 hearts, 5 clubs');
INSERT INTO translations VALUES ('1 ♥->2 ♣->3 ♦', '5 hearts, 4 diamonds');
INSERT INTO translations VALUES ('1 ♥->2 ♣->3 ♥', '15 to 17 points, 6 hearts');
INSERT INTO translations VALUES ('1 ♥->2 ♣->3 NT', 'endgame');
INSERT INTO translations VALUES ('1 ♥->2 ♣->4 ♥', '12 to 14 points, 7 hearts, endgame');
-- 1 ♠ ANSWERS
INSERT INTO translations VALUES ('1 ♠->1 NT', '7 to 10 points, can have 4 hearts, no spades FIT');
INSERT INTO translations VALUES ('1 ♠->2 ♣', '10+ points, 5+ clubs, FORCING');
INSERT INTO translations VALUES ('1 ♠->2 ♦', '10+ points, 5+ diamonds, FORCING');
INSERT INTO translations VALUES ('1 ♠->2 ♥', '10+ points, 5+ hearts, FORCING');
INSERT INTO translations VALUES ('1 ♠->2 ♠', '7 to 10 points, spades FIT');
INSERT INTO translations VALUES ('1 ♠->2 NT', '11 to 12 points, no spades FIT, invitation to 3 NT');
INSERT INTO translations VALUES ('1 ♠->3 ♠', '10 to 11 points, spades FIT, invitation to 4 ♠');
INSERT INTO translations VALUES ('1 ♠->3 NT', '12 to 16 points, no spades FIT, endgame');
INSERT INTO translations VALUES ('1 ♠->4 ♠', 'endgame');
-- 1 ♠ -> 2 ♣ ANSWERS
INSERT INTO translations VALUES ('1 ♠->2 ♣->2 ♦', '5 spades, 4+ diamonds, FORCING');
INSERT INTO translations VALUES ('1 ♠->2 ♣->2 ♥', '5 spades, 4+ hearts, FORCING');
INSERT INTO translations VALUES ('1 ♠->2 ♣->2 ♠', '12 to 14 points, 6 spades');
INSERT INTO translations VALUES ('1 ♠->2 ♣->2 NT', '12 to 14 points, 5 hearts, 3-3-2 in other suits');
INSERT INTO translations VALUES ('1 ♠->2 ♣->3 ♣', '12 to 14 points, 5 spades, 4 clubs');
INSERT INTO translations VALUES ('1 ♠->2 ♣->3 ♦', '15 to 17 points, 5 spades, 5 diamonds');
INSERT INTO translations VALUES ('1 ♠->2 ♣->3 ♥', '15 to 17 points, 5 spades, 5 hearts');
INSERT INTO translations VALUES ('1 ♠->2 ♣->3 ♠', '15 to 17 points, 6 spades');
INSERT INTO translations VALUES ('1 ♠->2 ♣->3 NT', 'endgame');
INSERT INTO translations VALUES ('1 ♠->2 ♣->4 ♠', '12 to 14 points, 7 spades, endgame');
-- 1 ♠ -> 2 ♦ ANSWERS
INSERT INTO translations VALUES ('1 ♠->2 ♦->2 ♥', '5 spades, 4+ hearts, FORCING');
INSERT INTO translations VALUES ('1 ♠->2 ♦->2 ♠', '12 to 14 points, 6 spades');
INSERT INTO translations VALUES ('1 ♠->2 ♦->2 NT', '12 to 14 points, 5 hearts, 3-3-2 in other suits');
INSERT INTO translations VALUES ('1 ♠->2 ♦->3 ♣', '15 to 17 points, 5 spades, 5 clubs');
INSERT INTO translations VALUES ('1 ♠->2 ♦->3 ♦', '12 to 14 points, 5 spades, 4 diamonds');
INSERT INTO translations VALUES ('1 ♠->2 ♦->3 ♥', '15 to 17 points, 5 spades, 5 hearts');
INSERT INTO translations VALUES ('1 ♠->2 ♦->3 ♠', '15 to 17 points, 6 spades');
INSERT INTO translations VALUES ('1 ♠->2 ♦->3 NT', 'endgame');
INSERT INTO translations VALUES ('1 ♠->2 ♦->4 ♠', '12 to 14 points, 7 spades, endgame');
-- 1 ♠ -> 2 ♥ ANSWERS
INSERT INTO translations VALUES ('1 ♠->2 ♥->2 ♠', '12 to 14 points, 6 spades');
INSERT INTO translations VALUES ('1 ♠->2 ♥->2 NT', '12 to 14 points, 5 hearts, 3-3-2 in other suits');
INSERT INTO translations VALUES ('1 ♠->2 ♥->3 ♣', '15 to 17 points, 5 spades, 5 clubs');
INSERT INTO translations VALUES ('1 ♠->2 ♥->3 ♦', '15 to 17 points, 5 spades, 5 diamonds');
INSERT INTO translations VALUES ('1 ♠->2 ♥->3 ♥', '12 to 14 points, 5 spades, hearts FIT');
INSERT INTO translations VALUES ('1 ♠->2 ♥->3 ♠', '15 to 17 points, 6 spades');
INSERT INTO translations VALUES ('1 ♠->2 ♥->3 NT', 'endgame');
INSERT INTO translations VALUES ('1 ♠->2 ♥->4 ♥', 'endgame');
INSERT INTO translations VALUES ('1 ♠->2 ♥->4 ♠', '12 to 14 points, 7 spades, endgame');
-- 1 NT ANSWERS
INSERT INTO translations VALUES ('1 NT->2 ♣', '8+ points, at least one four-card OLDER suit, stayman');
INSERT INTO translations VALUES ('1 NT->2 ♦', '5+ hearts, texas');
INSERT INTO translations VALUES ('1 NT->2 ♥', '5+ spades, texas');
INSERT INTO translations VALUES ('1 NT->2 ♠', '6+ clubs, texas');
INSERT INTO translations VALUES ('1 NT->2 NT', '8 to 9 points, invitation to 3 NT');
INSERT INTO translations VALUES ('1 NT->3 ♣', '6+ diamonds, texas');
INSERT INTO translations VALUES ('1 NT->3 NT', '9 to 15 points, balanced hand, no four-card OLDER suit, endgame');
-- 1 NT -> stayman ANSWERS
INSERT INTO translations VALUES ('1 NT->2 ♣->2 ♦', 'no four-card OLDER suit');
INSERT INTO translations VALUES ('1 NT->2 ♣->2 ♥', '4 hearts, less than 4 spades');
INSERT INTO translations VALUES ('1 NT->2 ♣->2 ♠', '4 spades, can have 4 hearts');
-- 1 NT -> stayman -> 2 ♦ ANSWERS
INSERT INTO translations VALUES ('1 NT->2 ♣->2 ♦->2 NT', '8 to 9 points, intivation to 3 NT');
INSERT INTO translations VALUES ('1 NT->2 ♣->2 ♦->3 ♣', '5 clubs, FORCING');
INSERT INTO translations VALUES ('1 NT->2 ♣->2 ♦->3 ♦', '5 diamonds, FORCING');
INSERT INTO translations VALUES ('1 NT->2 ♣->2 ♦->3 NT', '9 to 14 points, endgame');
-- 1 NT -> texas -> 2 ♥ ANSWERS
INSERT INTO translations VALUES ('1 NT->2 ♦->2 ♥->2 ♠', '5 hearts, 4 spades, FORCING');
INSERT INTO translations VALUES ('1 NT->2 ♦->2 ♥->2 NT', '8 to 9 points, 5 hearts, invitation to 3 NT or 4 ♥');
INSERT INTO translations VALUES ('1 NT->2 ♦->2 ♥->3 ♣', '5 hearts, 4 clubs, FORCING');
INSERT INTO translations VALUES ('1 NT->2 ♦->2 ♥->3 ♦', '5 hearts, 4 diamonds, FORCING');
INSERT INTO translations VALUES ('1 NT->2 ♦->2 ♥->3 ♥', '7 to 8 points, 6 hearts, invitation to 4 ♥');
INSERT INTO translations VALUES ('1 NT->2 ♦->2 ♥->3 NT', 'invitation to 4 ♥, endgame');
INSERT INTO translations VALUES ('1 NT->2 ♦->2 ♥->4 ♥', '6 hearts, endgame');
-- 1 NT -> texas -> 2 ♠ ANSWERS
INSERT INTO translations VALUES ('1 NT->2 ♥->2 ♠->2 NT', '8 to 9 points, 5 spades, invitation to 3 NT or 4 ♠');
INSERT INTO translations VALUES ('1 NT->2 ♥->2 ♠->3 ♣', '5 spades, 4 clubs, FORCING');
INSERT INTO translations VALUES ('1 NT->2 ♥->2 ♠->3 ♦', '5 spades, 4 diamonds, FORCING');
INSERT INTO translations VALUES ('1 NT->2 ♥->2 ♠->3 ♥', '5 spades, 4 hearts, FORCING');
INSERT INTO translations VALUES ('1 NT->2 ♥->2 ♠->3 ♠', '7 to 8 points, 6 spades, invitation to 4 ♠');
INSERT INTO translations VALUES ('1 NT->2 ♥->2 ♠->3 NT', 'invitation to 4 ♠, endgame');
INSERT INTO translations VALUES ('1 NT->2 ♥->2 ♠->4 ♥', '5 spades, 5 hearts, invitation to 4 ♠, endgame');
INSERT INTO translations VALUES ('1 NT->2 ♥->2 ♠->4 ♠', '6 spades, endgame');
-- 2 ♣ ANSWERS
INSERT INTO translations VALUES ('2 ♣->2 ♦', 'less than 3 control points (ace - 2 cp, king - 1 cp)');
INSERT INTO translations VALUES ('2 ♣->2 ♥', '3 control points (ace - 2 cp, king - 1 cp), 4 hearts');
INSERT INTO translations VALUES ('2 ♣->2 ♠', '3 control points (ace - 2 cp, king - 1 cp), 4 spades');
INSERT INTO translations VALUES ('2 ♣->2 NT', '3 control points (ace - 2 cp, king - 1 cp), no four-card OLDER suit, no five-card YOUNGER suit');
INSERT INTO translations VALUES ('2 ♣->3 ♣', '3 control points (ace - 2 cp, king - 1 cp), 5 clubs');
INSERT INTO translations VALUES ('2 ♣->3 ♦', '3 control points (ace - 2 cp, king - 1 cp), 5 diamonds');
INSERT INTO translations VALUES ('2 ♣->3 ♥', '3 control points (ace - 2 cp, king - 1 cp), 5 hearts');
INSERT INTO translations VALUES ('2 ♣->3 ♠', '3 control points (ace - 2 cp, king - 1 cp), 5 spades');
-- 2 ♣ -> 2 ♦ ANSWERS
INSERT INTO translations VALUES ('2 ♣->2 ♦->2 ♥', '4 hearts');
INSERT INTO translations VALUES ('2 ♣->2 ♦->2 ♠', '4 spades');
INSERT INTO translations VALUES ('2 ♣->2 ♦->2 NT', '25+ points, no four-card OLDER suit, no five-card YOUNGER suit, stayman');
INSERT INTO translations VALUES ('2 ♣->2 ♦->3 ♣', '5 clubs');
INSERT INTO translations VALUES ('2 ♣->2 ♦->3 ♦', '5 diamonds');
INSERT INTO translations VALUES ('2 ♣->2 ♦->3 ♥', '5 hearts');
INSERT INTO translations VALUES ('2 ♣->2 ♦->3 ♠', '5 spades');
INSERT INTO translations VALUES ('2 ♣->2 ♦->3 NT', 'endgame');
-- 2 ♥ ANSWERS
INSERT INTO translations VALUES ('2 ♥->2 ♠', '12+ points, asking for SHORTNESS');
INSERT INTO translations VALUES ('2 ♥->2 ♠->2 NT', 'spades SHORTNESS');
INSERT INTO translations VALUES ('2 ♥->2 ♠->3 ♣', 'clubs SHORTNESS');
INSERT INTO translations VALUES ('2 ♥->2 ♠->3 ♦', 'diamonds SHORTNESS');
INSERT INTO translations VALUES ('2 ♥->2 ♠->3 ♥', 'no SHORTNESS');
-- 2 ♠ ANSWERS
INSERT INTO translations VALUES ('2 ♠->2 NT', '12+ points, asking for SHORTNESS');
INSERT INTO translations VALUES ('2 ♠->2 NT->3 ♣', 'clubs SHORTNESS');
INSERT INTO translations VALUES ('2 ♠->2 NT->3 ♦', 'diamonds SHORTNESS');
INSERT INTO translations VALUES ('2 ♠->2 NT->3 ♥', 'hearts SHORTNESS');
INSERT INTO translations VALUES ('2 ♠->2 NT->3 ♠', 'no SHORTNESS');
-- 2 NT ANSWERS
INSERT INTO translations VALUES ('2 NT->3 ♣', '3+ points, stayman');
INSERT INTO translations VALUES ('2 NT->3 ♦', '5+ hearts, texas');
INSERT INTO translations VALUES ('2 NT->3 ♥', '5+ spades, texas');
INSERT INTO translations VALUES ('2 NT->3 ♠', '6+ clubs, texas');
INSERT INTO translations VALUES ('2 NT->3 NT', '3 to 4 points, endgame');
INSERT INTO translations VALUES ('2 NT->4 ♣', '6+ diamonds, texas');
-- 3 NT ANSWERS
INSERT INTO translations VALUES ('3 NT->PASS', 'balanced hand');
INSERT INTO translations VALUES ('3 NT->4 ♣', '6+ clubs');
INSERT INTO translations VALUES ('3 NT->4 ♥', '6+ hearts');
INSERT INTO translations VALUES ('3 NT->4 ♠', '6+ spades');
-- 3 NT -> 4 ♣ ANSWERS
INSERT INTO translations VALUES ('3 NT->4 ♣->4 ♦', '7+ diamonds');