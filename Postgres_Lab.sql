/* Select airport code for airports LIKE 'John F Kennedy' or 'De Gaulle'. */

# SELECT iata_faa FROM airports
 > WHERE name LIKE 'John F Kennedy%'
 > OR name LIKE '%De Gaulle';

/* Select all the flights originating from 'JFK' AND going to 'CDG'. */

# SELECT * FROM routes
 > WHERE origin_code LIKE 'JFK'
 > AND dest_code LIKE 'CDG';

/* Find out the NUMBER of airports in Canada. */

# SELECT COUNT(airports)
 > FROM airports
 > WHERE country LIKE 'Canada';

/* Select airport names IN the following countries- Algeria, Ghana, Ethiopia, order by country. */

# SELECT name FROM airports
 > WHERE country IN ('Algeria', 'Ghana', 'Ethiopia')
 > ORDER by country ASC;

/* Select all the airports that airlines 'Germania' flies from. */

# SELECT DISTINCT airports.name FROM routes, airlines, airports
 > WHERE airlines.id = routes.airline_id
 > AND routes.origin_code = airports.iata_faa
 > AND airlines.name = 'Germania';
