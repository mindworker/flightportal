CREATE TABLE IF NOT EXISTS airports(
       id int PRIMARY KEY UNIQUE,
       name varchar,
       city varchar,
       country varchar,
       IATA char(3) NULL,
       ICAO char(4) NULL,
       latitude double precision,
       longitude double precision,
       altitude_ft int,
       timezone_utc float,
       DST char(1),
       timezone_tz varchar,
       type varchar,
       source varchar
);

CREATE TABLE IF NOT EXISTS airport_rankings(
       IATA char(3) NOT NULL UNIQUE,
       rank int,
       passengers int
);

CREATE TABLE IF NOT EXISTS airport_spatial(
       id int PRIMARY KEY UNIQUE,
       location geography(Point,4326)
);


CREATE TABLE IF NOT EXISTS flightdiary_airports(
       name varchar,
       url varchar,
       country varchar,
       IATA char(3) NULL,
       lon double precision,
       value varchar,	      
       label varchar,
       ICAO char(4) NULL,
       lat double precision,
       id int PRIMARY KEY UNIQUE
);

CREATE TABLE IF NOT EXISTS flightdiary_comments(
       _type varchar,
       airport_id int,
       content text,
       extra varchar,
       facebook varchar,
       helpful_percentage int,
       id int PRIMARY KEY UNIQUE,
       is_voted boolean,
       name varchar,
       page int,
       rating smallint,
       reported varchar,
       time varchar,
       timestamp varchar,
       total_no int,
       total_yes int,
       url varchar
);

CREATE TABLE IF NOT EXISTS flightdiary_flights(
       _type varchar,
       aircraft varchar,
       aircraft_reg varchar,
       airline varchar,
       arrival_time varchar,
       date varchar,
       departure_time varchar,
       distance_mile int,
       flight_no varchar,
       from_iata char(3) NULL,
       page int,
       seat varchar,
       timestamp int,
       to_iata char(3) NULL,
       username varchar
);

CREATE TABLE IF NOT EXISTS routes(
       airline varchar,
       airline_id int,
       src_airport varchar,
       src_airport_id int,
       dest_airport varchar,
       dest_airport_id int,
       codeshare char(1),
       stops smallint,
       equipment varchar
);

CREATE TABLE IF NOT EXISTS routes_unique(
       src varchar NOT NULL,
       dest varchar NOT NULL,
       PRIMARY KEY(src, dest)
);

CREATE TABLE IF NOT EXISTS airlines(
       id int PRIMARY KEY UNIQUE,
       name varchar,
       alias varchar,
       IATA char(3) NULL,
       ICAO char(4) NULL,
       callsign varchar,
       country varchar,
       active char(1)
);

CREATE TABLE IF NOT EXISTS flightdiary_airlines(
       name varchar,
       url varchar,
       country varchar,
       IATA char(3) NULL,
       value varchar,
       label varchar,
       id int PRIMARY KEY UNIQUE
);

CREATE TABLE IF NOT EXISTS flightdiary_airline_comments(
       _type varchar,
       airline_id int,
       content text,
       extra varchar,
       facebook varchar,
       helpful_percentage int,
       id int PRIMARY KEY UNIQUE,
       is_voted boolean,
       name varchar,
       page int,
       rating smallint,
       reported varchar,
       time varchar,
       timestamp varchar,
       total_no int,
       total_yes int,
       url varchar
);
