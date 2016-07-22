USE band_tracker
--venues
INSERT INTO venues (name) VALUES ('Woodstock')
INSERT INTO venues (name) VALUES ('Red Rocks')
INSERT INTO venues (name) VALUES ('Edgefield')
INSERT INTO venues (name) VALUES ('Crystal Ballroom')
INSERT INTO venues (name) VALUES ('Wonder Ballroom')
INSERT INTO venues (name) VALUES ('Rose Garden')
INSERT INTO venues (name) VALUES ('Filmore East')

--bands
INSERT INTO bands (name) VALUES ('Simple Twist of Fate')
INSERT INTO bands (name) VALUES ('The Allman Brothers')
INSERT INTO bands (name) VALUES ('The Byrds')
INSERT INTO bands (name) VALUES ('The Meat Puppets')
INSERT INTO bands (name) VALUES ('The Red Hot Chili Peppers')
INSERT INTO bands (name) VALUES ('The Sunset Yodelers')
INSERT INTO bands (name) VALUES ('The Happy Racoons')

--bands_venues
INSERT INTO bands_venues (band_id, venue_id) VALUES (1,1)
INSERT INTO bands_venues (band_id, venue_id) VALUES (1,2)
INSERT INTO bands_venues (band_id, venue_id) VALUES (1,3)
INSERT INTO bands_venues (band_id, venue_id) VALUES (1,4)
INSERT INTO bands_venues (band_id, venue_id) VALUES (2,1)
INSERT INTO bands_venues (band_id, venue_id) VALUES (2,5)
INSERT INTO bands_venues (band_id, venue_id) VALUES (2,6)
INSERT INTO bands_venues (band_id, venue_id) VALUES (2,7)
INSERT INTO bands_venues (band_id, venue_id) VALUES (3,6)
INSERT INTO bands_venues (band_id, venue_id) VALUES (3,7)
INSERT INTO bands_venues (band_id, venue_id) VALUES (3,5)
INSERT INTO bands_venues (band_id, venue_id) VALUES (4,3)
INSERT INTO bands_venues (band_id, venue_id) VALUES (4,4)
INSERT INTO bands_venues (band_id, venue_id) VALUES (4,2)
INSERT INTO bands_venues (band_id, venue_id) VALUES (4,1)
INSERT INTO bands_venues (band_id, venue_id) VALUES (5,2)
INSERT INTO bands_venues (band_id, venue_id) VALUES (5,3)
INSERT INTO bands_venues (band_id, venue_id) VALUES (5,4)
INSERT INTO bands_venues (band_id, venue_id) VALUES (5,7)
INSERT INTO bands_venues (band_id, venue_id) VALUES (6,6)
INSERT INTO bands_venues (band_id, venue_id) VALUES (6,5)
INSERT INTO bands_venues (band_id, venue_id) VALUES (6,4)
INSERT INTO bands_venues (band_id, venue_id) VALUES (6,2)
INSERT INTO bands_venues (band_id, venue_id) VALUES (7,1)
INSERT INTO bands_venues (band_id, venue_id) VALUES (7,3)
INSERT INTO bands_venues (band_id, venue_id) VALUES (7,5)
INSERT INTO bands_venues (band_id, venue_id) VALUES (7,6)
INSERT INTO bands_venues (band_id, venue_id) VALUES (7,7)


SELECT * FROM bands
SELECT * FROM venues
SELECT * FROM bands_venues


