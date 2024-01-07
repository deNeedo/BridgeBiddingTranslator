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
INSERT INTO translations VALUES ('1C->1D', '0 to 6 POINTS, any hand');
INSERT INTO translations VALUES ('1C->1H', '7+ POINTS, 4+ hearts');
INSERT INTO translations VALUES ('1C->1S', '7+ POINTS, 4+ spades');
INSERT INTO translations VALUES ('1C->1NT', '7 to 10 POINTS, no four-card OLDER suit, can have five-card YOUNGER suit');
INSERT INTO translations VALUES ('1C->2C', '10+ POINTS, 5+ clubs');
INSERT INTO translations VALUES ('1C->2D', '10+ POINTS, 5+ diamonds');
INSERT INTO translations VALUES ('1C->2H', '12+ POINTS, 5+ hearts');
INSERT INTO translations VALUES ('1C->2S', '12+ POINTS, 5+ spades');
INSERT INTO translations VALUES ('1C->2NT', '11 to 12 POINTS, no four-card OLDER suit, invitation to 3NT');
INSERT INTO translations VALUES ('1C->3NT', '13 to 16 POINTS, no four-card OLDER suit, no five-card YOUNGER suit');
-- 1C -> 1D ANSWERS
INSERT INTO translations VALUES ('1C->1D->1H', '3+ hearts');
INSERT INTO translations VALUES ('1C->1D->1S', '3+ spades');
INSERT INTO translations VALUES ('1C->1D->1NT', '18 to 20 points, balanced hand, stayman');
INSERT INTO translations VALUES ('1C->1D->2C', '5+ clubs');
INSERT INTO translations VALUES ('1C->1D->2D', '18 to 22 points, 5 diamonds');
INSERT INTO translations VALUES ('1C->1D->2H', '18 to 22 points, 5 hearts');
INSERT INTO translations VALUES ('1C->1D->2S', '18 to 22 points, 5 spades');
INSERT INTO translations VALUES ('1C->1D->2NT', '21 to 22 points, balanced hand, stayman');
INSERT INTO translations VALUES ('1C->1D->3C', '18 to 22 points, 6+ clubs');
INSERT INTO translations VALUES ('1C->1D->3D', '18 to 22 points, 6+ diamonds');
INSERT INTO translations VALUES ('1C->1D->3H', '18 to 22 points, 6+ hearts');
INSERT INTO translations VALUES ('1C->1D->3S', '18 to 22 points, 6+ spades');
-- 1C -> 1H ANSWERS
INSERT INTO translations VALUES ('1C->1H->1S', '4 spades, less than 4 hearts, FORCING');
INSERT INTO translations VALUES ('1C->1H->1NT', '12 to 14 points, no four-card OLDER suit');
INSERT INTO translations VALUES ('1C->1H->2C', '5 clubs');
INSERT INTO translations VALUES ('1C->1H->2D', '18 to 22 points, 3 hearts, reversal');
INSERT INTO translations VALUES ('1C->1H->2H', '12 to 14 points, 4 hearts');
INSERT INTO translations VALUES ('1C->1H->2S', '18 to 22 points, 5 spades, FORCING');
INSERT INTO translations VALUES ('1C->1H->2NT', '18 to 22 points, less than 3 hearts, FORCING');
INSERT INTO translations VALUES ('1C->1H->3NT', 'endgame');
INSERT INTO translations VALUES ('1C->1H->4H', 'endgame');
-- 1C -> 1S ANSWERS
INSERT INTO translations VALUES ('1C->1S->1NT', '12 to 14 points, less than 4 spades, can have 4 hearts');
INSERT INTO translations VALUES ('1C->1S->2C', '5 clubs');
INSERT INTO translations VALUES ('1C->1S->2D', '18 to 22 points, 3 spades, reversal');
INSERT INTO translations VALUES ('1C->1S->2H', '18 to 22 points, 5 hearts, FORCING');
INSERT INTO translations VALUES ('1C->1S->2S', '12 to 14 points, 4 spades');
INSERT INTO translations VALUES ('1C->1S->2NT', '18 to 22 points, less than 3 spades, FORCING');
INSERT INTO translations VALUES ('1C->1S->3NT', 'endgame');
INSERT INTO translations VALUES ('1C->1S->4S', 'endgame');
-- 1H -> reversal ANSWERS
INSERT INTO translations VALUES ('1C->1H->2D->2H', '7 to 10 points, 4 hearts');
INSERT INTO translations VALUES ('1C->1H->2D->2S', '11+ points, 4 hearts');
INSERT INTO translations VALUES ('1C->1H->2D->2NT', '7 to 10 points, 5 hearts');
INSERT INTO translations VALUES ('1C->1H->2D->3C', '11+ points, 5 hearts');
INSERT INTO translations VALUES ('1C->1H->2D->3D', '7 to 10 points, 6 hearts');
INSERT INTO translations VALUES ('1C->1H->2D->3H', '11+ points, 6 hearts');
INSERT INTO translations VALUES ('1C->1H->2D->3S', '7 to 10 points, 7 hearts');
INSERT INTO translations VALUES ('1C->1H->2D->3NT', '11+ points, 7 hearts');
-- 1S -> reversal ANSWERS
INSERT INTO translations VALUES ('1C->1S->2D->2H', '7 to 10 points, 4 spades');
INSERT INTO translations VALUES ('1C->1S->2D->2S', '11+ points, 4 spades');
INSERT INTO translations VALUES ('1C->1S->2D->2NT', '7 to 10 points, 5 spades');
INSERT INTO translations VALUES ('1C->1S->2D->3C', '11+ points, 5 spades');
INSERT INTO translations VALUES ('1C->1S->2D->3D', '7 to 10 points, 6 spades');
INSERT INTO translations VALUES ('1C->1S->2D->3H', '11+ points, 6 spades');
INSERT INTO translations VALUES ('1C->1S->2D->3S', '7 to 10 points, 7 spades');
INSERT INTO translations VALUES ('1C->1S->2D->3NT', '11+ points, 7 spades');
-- 1D ANSWERS
INSERT INTO translations VALUES ('1D->1H', '7+ points, 4+ hearts, FORCING');
INSERT INTO translations VALUES ('1D->1S', '7+ points, 4+ spades, FORCING');
INSERT INTO translations VALUES ('1D->1NT', '7 to 10 points, no four-card OLDER suit');
INSERT INTO translations VALUES ('1D->2C', '10+ points, 5+ clubs');
INSERT INTO translations VALUES ('1D->2D', '7 to 9 points, 3+ diamonds');
INSERT INTO translations VALUES ('1D->2H', '12+ points, 5+ hearts, FORCING to endgame');
INSERT INTO translations VALUES ('1D->2S', '12+ points, 5+ spades, FORCING to endgame');
INSERT INTO translations VALUES ('1D->2NT', '11 to 12 points, no four-card OLDER suit, invitation to 3NT');
INSERT INTO translations VALUES ('1D->3NT', '13 to 16 points, no four-card OLDER suit and no five-card YOUNGER suit');
-- 1D -> 1H ANSWERS
INSERT INTO translations VALUES ('1D->1H->1S', '4+ spades, less than 4 hearts, FORCING');
INSERT INTO translations VALUES ('1D->1H->1NT', '12 to 14 points, no four-card OLDER suit');
INSERT INTO translations VALUES ('1D->1H->2C', '12 to 14 points, 5 diamonds, 4+ clubs');
INSERT INTO translations VALUES ('1D->1H->2D', '12 to 14 points, 6 diamonds');
INSERT INTO translations VALUES ('1D->1H->2H', '12 to 14 points, 4 hearts');
INSERT INTO translations VALUES ('1D->1H->2S', '15 to 17 points, 4 spades, 5 diamonds, FORCING');
INSERT INTO translations VALUES ('1D->1H->2NT', '15 to 17 points, no four-card OLDER SUIT, FORCING');
INSERT INTO translations VALUES ('1D->1H->3C', '15 to 17 points, 5 clubs, 5 diamonds');
INSERT INTO translations VALUES ('1D->1H->3D', '15 to 17 points, 6 diamonds with 2+ figures, FORCING');
INSERT INTO translations VALUES ('1D->1H->3NT', 'endgame');
INSERT INTO translations VALUES ('1D->1H->4H', 'endgame');
-- 1D -> 1S ANSWERS
INSERT INTO translations VALUES ('1D->1S->1NT', '12 to 14 points, less than 4 spades');
INSERT INTO translations VALUES ('1D->1S->2C', '12 to 14 points, 5 diamonds, 4+ clubs');
INSERT INTO translations VALUES ('1D->1S->2D', '12 to 14 points, 6 diamonds');
INSERT INTO translations VALUES ('1D->1S->2H', '15 to 17 points, 4 hearts, 5 diamonds, FORCING');
INSERT INTO translations VALUES ('1D->1S->2S', '12 to 14 points, 4 spades');
INSERT INTO translations VALUES ('1D->1S->2NT', '15 to 17 points, no four-card OLDER SUIT, FORCING');
INSERT INTO translations VALUES ('1D->1S->3C', '15 to 17 points, 5 clubs, 5 diamonds');
INSERT INTO translations VALUES ('1D->1S->3D', '15 to 17 points, 6 diamonds with 2+ figures, FORCING');
INSERT INTO translations VALUES ('1D->1S->3NT', 'endgame');
INSERT INTO translations VALUES ('1D->1S->4S', 'endgame');
-- 1H ANSWERS
INSERT INTO translations VALUES ('1H->1S', '7+ points, 4+ spades, FORCING');
INSERT INTO translations VALUES ('1H->1NT', '7 to 10 points, less than 4 spades, no hearts FIT');
INSERT INTO translations VALUES ('1H->2C', '10+ points, 5+ clubs, FORCING');
INSERT INTO translations VALUES ('1H->2D', '10+ points, 5+ diamonds, FORCING');
INSERT INTO translations VALUES ('1H->2H', '7 to 10 points, hearts FIT');
INSERT INTO translations VALUES ('1H->2S', '12+ points, 5+ spades, FORCING');
INSERT INTO translations VALUES ('1H->2NT', '11 to 12 points, less than 4 spades, no hearts FIT, FORCING');
INSERT INTO translations VALUES ('1H->3H', '12 to 16 points, hearts FIT, FORCING');
INSERT INTO translations VALUES ('1H->3NT', 'endgame');
INSERT INTO translations VALUES ('1H->4H', 'endgame');
-- 1H -> 1S ANSWERS
INSERT INTO translations VALUES ('1H->1S->1NT', '12 to 14 points, less than 4 spades');
INSERT INTO translations VALUES ('1H->1S->2C', '5 hearts, 4+ clubs, FORCING');
INSERT INTO translations VALUES ('1H->1S->2D', '5 hearts, 5 diamonds, FORCING');
INSERT INTO translations VALUES ('1H->1S->2H', '12 to 14 points, 6 hearts');
INSERT INTO translations VALUES ('1H->1S->2S', '5 hearts, 4 spades');
INSERT INTO translations VALUES ('1H->1S->2NT', '15 to 17 points, less than 4 spades, FORCING');
INSERT INTO translations VALUES ('1H->1S->3C', '15 to 17 points, 5 hearts, 5 clubs');
INSERT INTO translations VALUES ('1H->1S->3D', '15 to 17 points, 5 hearts, 5 diamonds');
INSERT INTO translations VALUES ('1H->1S->3H', '15 to 17 points, 6 hearts');
INSERT INTO translations VALUES ('1H->1S->3NT', 'endgame');
INSERT INTO translations VALUES ('1H->1S->4H', '7 hearts, endgame');
INSERT INTO translations VALUES ('1H->1S->4H', 'endgame');
-- 1H -> 2C ANSWERS
INSERT INTO translations VALUES ('1H->2C->2D', '5 hearts, 4+ diamonds, FORCING');
INSERT INTO translations VALUES ('1H->2C->2H', '12 to 14 points, 6 hearts');
INSERT INTO translations VALUES ('1H->2C->2S', '15 to 17 points, 5 hearts, 4 spades, FORCING');
INSERT INTO translations VALUES ('1H->2C->2NT', '12 to 14 points, 5 hearts, 3-3-2 in outher suits');
INSERT INTO translations VALUES ('1H->2C->3C', '5 hearts, 4 clubs');
INSERT INTO translations VALUES ('1H->2C->3D', '15 to 17 points, 5 hearts, 5 diamonds');
INSERT INTO translations VALUES ('1H->2C->3H', '15 to 17 points, 6 hearts');
INSERT INTO translations VALUES ('1H->2C->3NT', 'endgame');
INSERT INTO translations VALUES ('1H->2C->4H', '12 to 14 points, 7 hearts, endgame');
-- 1H -> 2D ANSWERS
INSERT INTO translations VALUES ('1H->2D->2H', '12 to 14 points, 6 hearts');
INSERT INTO translations VALUES ('1H->2C->2S', '15 to 17 points, 5 hearts, 4 spades, FORCING');
INSERT INTO translations VALUES ('1H->2C->2NT', '12 to 14 points, 5 hearts, 3-3-2 in outher suits');
INSERT INTO translations VALUES ('1H->2C->3C', '15 to 17 points, 5 hearts, 5 clubs');
INSERT INTO translations VALUES ('1H->2C->3D', '5 hearts, 4 diamonds');
INSERT INTO translations VALUES ('1H->2C->3H', '15 to 17 points, 6 hearts');
INSERT INTO translations VALUES ('1H->2C->3NT', 'endgame');
INSERT INTO translations VALUES ('1H->2C->4H', '12 to 14 points, 7 hearts, endgame');
-- 1S ANSWERS
INSERT INTO translations VALUES ('1S->1NT', '7 to 10 points, can have 4 hearts, no spades FIT');
INSERT INTO translations VALUES ('1S->2C', '10+ points, 5+ clubs, FORCING');
INSERT INTO translations VALUES ('1S->2D', '10+ points, 5+ diamonds, FORCING');
INSERT INTO translations VALUES ('1S->2H', '10+ points, 5+ hearts, FORCING');
INSERT INTO translations VALUES ('1S->2S', '7 to 10 points, spades FIT');
INSERT INTO translations VALUES ('1S->2NT', '11 to 12 points, no spades FIT, invitation to 3NT');
INSERT INTO translations VALUES ('1S->3S', '10 to 11 points, spades FIT, invitation to 4S');
INSERT INTO translations VALUES ('1S->3NT', '12 to 16 points, no spades FIT, endgame');
INSERT INTO translations VALUES ('1S->4S', 'endgame');
-- 1S -> 2C ANSWERS
INSERT INTO translations VALUES ('1S->2C->2D', '5 spades, 4+ diamonds, FORCING');
INSERT INTO translations VALUES ('1S->2C->2H', '5 spades, 4+ hearts, FORCING');
INSERT INTO translations VALUES ('1S->2C->2S', '12 to 14 points, 6 spades');
INSERT INTO translations VALUES ('1S->2C->2NT', '12 to 14 points, 5 hearts, 3-3-2 in other suits');
INSERT INTO translations VALUES ('1S->2C->3C', '12 to 14 points, 5 spades, 4 clubs');
INSERT INTO translations VALUES ('1S->2C->3D', '15 to 17 points, 5 spades, 5 diamonds');
INSERT INTO translations VALUES ('1S->2C->3H', '15 to 17 points, 5 spades, 5 hearts');
INSERT INTO translations VALUES ('1S->2C->3S', '15 to 17 points, 6 spades');
INSERT INTO translations VALUES ('1S->2C->3NT', 'endgame');
INSERT INTO translations VALUES ('1S->2C->4S', '12 to 14 points, 7 spades, endgame');
-- 1S -> 2D ANSWERS
INSERT INTO translations VALUES ('1S->2D->2H', '5 spades, 4+ hearts, FORCING');
INSERT INTO translations VALUES ('1S->2D->2S', '12 to 14 points, 6 spades');
INSERT INTO translations VALUES ('1S->2D->2NT', '12 to 14 points, 5 hearts, 3-3-2 in other suits');
INSERT INTO translations VALUES ('1S->2D->3C', '15 to 17 points, 5 spades, 5 clubs');
INSERT INTO translations VALUES ('1S->2D->3D', '12 to 14 points, 5 spades, 4 diamonds');
INSERT INTO translations VALUES ('1S->2D->3H', '15 to 17 points, 5 spades, 5 hearts');
INSERT INTO translations VALUES ('1S->2D->3S', '15 to 17 points, 6 spades');
INSERT INTO translations VALUES ('1S->2D->3NT', 'endgame');
INSERT INTO translations VALUES ('1S->2D->4S', '12 to 14 points, 7 spades, endgame');
-- 1S -> 2H ANSWERS
INSERT INTO translations VALUES ('1S->2H->2S', '12 to 14 points, 6 spades');
INSERT INTO translations VALUES ('1S->2H->2NT', '12 to 14 points, 5 hearts, 3-3-2 in other suits');
INSERT INTO translations VALUES ('1S->2H->3C', '15 to 17 points, 5 spades, 5 clubs');
INSERT INTO translations VALUES ('1S->2H->3D', '15 to 17 points, 5 spades, 5 diamonds');
INSERT INTO translations VALUES ('1S->2H->3H', '12 to 14 points, 5 spades, hearts FIT');
INSERT INTO translations VALUES ('1S->2H->3S', '15 to 17 points, 6 spades');
INSERT INTO translations VALUES ('1S->2H->3NT', 'endgame');
INSERT INTO translations VALUES ('1S->2H->4H', 'endgame');
INSERT INTO translations VALUES ('1S->2H->4S', '12 to 14 points, 7 spades, endgame');
-- 1NT ANSWERS
INSERT INTO translations VALUES ('1NT->2C', '8+ points, at least one four-card OLDER suit, stayman');
INSERT INTO translations VALUES ('1NT->2D', '5+ hearts, texas');
INSERT INTO translations VALUES ('1NT->2H', '5+ spades, texas');
INSERT INTO translations VALUES ('1NT->2S', '6+ clubs, texas');
INSERT INTO translations VALUES ('1NT->2NT', '8 to 9 points, invitation to 3NT');
INSERT INTO translations VALUES ('1NT->3C', '6+ diamonds, texas');
INSERT INTO translations VALUES ('1NT->3NT', '9 to 15 points, balanced hand, no four-card OLDER suit, endgame');
-- 1NT -> stayman ANSWERS
INSERT INTO translations VALUES ('1NT->2C->2D', 'no four-card OLDER suit');
INSERT INTO translations VALUES ('1NT->2C->2H', '4 hearts, less than 4 spades');
INSERT INTO translations VALUES ('1NT->2C->2S', '4 spades, can have 4 hearts');
-- 1NT -> stayman -> 2D ANSWERS
INSERT INTO translations VALUES ('1NT->2C->2D->2NT', '8 to 9 points, intivation to 3NT');
INSERT INTO translations VALUES ('1NT->2C->2D->3C', '5 clubs, FORCING');
INSERT INTO translations VALUES ('1NT->2C->2D->3D', '5 diamonds, FORCING');
INSERT INTO translations VALUES ('1NT->2C->2D->3NT', '9 to 14 points, endgame');
-- 1NT -> texas -> 2H ANSWERS
INSERT INTO translations VALUES ('1NT->2D->2H->2S', '5 hearts, 4 spades, FORCING');
INSERT INTO translations VALUES ('1NT->2D->2H->2NT', '8 to 9 points, 5 hearts, invitation to 3NT or 4H');
INSERT INTO translations VALUES ('1NT->2D->2H->3C', '5 hearts, 4 clubs, FORCING');
INSERT INTO translations VALUES ('1NT->2D->2H->3D', '5 hearts, 4 diamonds, FORCING');
INSERT INTO translations VALUES ('1NT->2D->2H->3H', '7 to 8 points, 6 hearts, invitation to 4H');
INSERT INTO translations VALUES ('1NT->2D->2H->3NT', 'invitation to 4H, endgame');
INSERT INTO translations VALUES ('1NT->2D->2H->4H', '6 hearts, endgame');
-- 1NT -> texas -> 2S ANSWERS
INSERT INTO translations VALUES ('1NT->2H->2S->2NT', '8 to 9 points, 5 spades, invitation to 3NT or 4S');
INSERT INTO translations VALUES ('1NT->2H->2S->3C', '5 spades, 4 clubs, FORCING');
INSERT INTO translations VALUES ('1NT->2H->2S->3D', '5 spades, 4 diamonds, FORCING');
INSERT INTO translations VALUES ('1NT->2H->2S->3H', '5 spades, 4 hearts, FORCING');
INSERT INTO translations VALUES ('1NT->2H->2S->3S', '7 to 8 points, 6 spades, invitation to 4S');
INSERT INTO translations VALUES ('1NT->2H->2S->3NT', 'invitation to 4S, endgame');
INSERT INTO translations VALUES ('1NT->2H->2S->4H', '5 spades, 5 hearts, invitation to 4S, endgame');
INSERT INTO translations VALUES ('1NT->2H->2S->4S', '6 spades, endgame');
-- 2C ANSWERS
INSERT INTO translations VALUES ('2C->2D', 'less than 3 control points (ace - 2 cp, king - 1 cp)');
INSERT INTO translations VALUES ('2C->2H', '3 control points (ace - 2 cp, king - 1 cp), 4 hearts');
INSERT INTO translations VALUES ('2C->2S', '3 control points (ace - 2 cp, king - 1 cp), 4 spades');
INSERT INTO translations VALUES ('2C->2NT', '3 control points (ace - 2 cp, king - 1 cp), no four-card OLDER suit, no five-card YOUNGER suit');
INSERT INTO translations VALUES ('2C->3C', '3 control points (ace - 2 cp, king - 1 cp), 5 clubs');
INSERT INTO translations VALUES ('2C->3D', '3 control points (ace - 2 cp, king - 1 cp), 5 diamonds');
INSERT INTO translations VALUES ('2C->3H', '3 control points (ace - 2 cp, king - 1 cp), 5 hearts');
INSERT INTO translations VALUES ('2C->3S', '3 control points (ace - 2 cp, king - 1 cp), 5 spades');
-- 2C -> 2D ANSWERS
INSERT INTO translations VALUES ('2C->2D->2H', '4 hearts');
INSERT INTO translations VALUES ('2C->2D->2S', '4 spades');
INSERT INTO translations VALUES ('2C->2D->2NT', '25+ points, no four-card OLDER suit, no five-card YOUNGER suit, stayman');
INSERT INTO translations VALUES ('2C->2D->3C', '5 clubs');
INSERT INTO translations VALUES ('2C->2D->3D', '5 diamonds');
INSERT INTO translations VALUES ('2C->2D->3H', '5 hearts');
INSERT INTO translations VALUES ('2C->2D->3S', '5 spades');
INSERT INTO translations VALUES ('2C->2D->3NT', 'endgame');
-- 2H ANSWERS
INSERT INTO translations VALUES ('2H->2S', '12+ points, asking for SHORTNESS');
INSERT INTO translations VALUES ('2H->2S->2NT', 'spades SHORTNESS');
INSERT INTO translations VALUES ('2H->2S->3C', 'clubs SHORTNESS');
INSERT INTO translations VALUES ('2H->2S->3D', 'diamonds SHORTNESS');
INSERT INTO translations VALUES ('2H->2S->3H', 'no SHORTNESS');
-- 2S ANSWERS
INSERT INTO translations VALUES ('2S->2NT', '12+ points, asking for SHORTNESS');
INSERT INTO translations VALUES ('2S->2NT->3C', 'clubs SHORTNESS');
INSERT INTO translations VALUES ('2S->2NT->3D', 'diamonds SHORTNESS');
INSERT INTO translations VALUES ('2S->2NT->3H', 'hearts SHORTNESS');
INSERT INTO translations VALUES ('2S->2NT->3S', 'no SHORTNESS');
-- 2NT ANSWERS
INSERT INTO translations VALUES ('2NT->3C', '3+ points, stayman');
INSERT INTO translations VALUES ('2NT->3D', '5+ hearts, texas');
INSERT INTO translations VALUES ('2NT->3H', '5+ spades, texas');
INSERT INTO translations VALUES ('2NT->3S', '6+ clubs, texas');
INSERT INTO translations VALUES ('2NT->3NT', '3 to 4 points, endgame');
INSERT INTO translations VALUES ('2NT->4C', '6+ diamonds, texas');
-- 3NT ANSWERS
INSERT INTO translations VALUES ('3NT->PASS', 'balanced hand');
INSERT INTO translations VALUES ('3NT->4C', '6+ clubs');
INSERT INTO translations VALUES ('3NT->4H', '6+ hearts');
INSERT INTO translations VALUES ('3NT->4S', '6+ spades');
-- 3NT -> 4C ANSWERS
INSERT INTO translations VALUES ('3NT->4C->4D', '7+ diamonds');