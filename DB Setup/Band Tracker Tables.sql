USE band_tracker

CREATE TABLE bands
(
	name VARCHAR(100),
	id INT IDENTITY(1,1)
	)

CREATE TABLE venues
(
	name VARCHAR(100),
	id INT IDENTITY(1,1)
	)


CREATE TABLE bands_venues
(
	band_id INT,
	venue_id INT,
	id INT IDENTITY(1,1)
	)

	
