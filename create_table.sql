CREATE TABLE airports(
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
