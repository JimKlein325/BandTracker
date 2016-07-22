USE band_tracker

--public static List<Band> GetBands(int venueId)
SELECT bands.name FROM
venues JOIN bands_venues ON (venues.id = bands_venues.venue_id)
		JOIN bands ON (bands_venues.band_id = bands.id)
WHERE venues.id = 3

--public static List<Band> GetVenues(int bandId)
SELECT venues.name FROM
bands JOIN bands_venues ON (bands.id = bands_venues.band_id)
	JOIN venues ON ( bands_venues.venue_id = venues.id)
WHERE bands.id = 1

SELECT * FROM bands_venues
SELECT * FROM venues
