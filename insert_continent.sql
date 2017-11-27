
----------------------------------------------
----------------------------------------------
---------- insert data into tables -----------
----------------------------------------------
----------------------------------------------

/*CONTINENTS*/

INSERT INTO geolocation.continent
  SELECT
    -1        AS continent_id,
    'n/i'     AS continent,
    NULL      AS income_per_capita,
    NULL      AS population,
    NULL      AS latitude,
    NULL      AS longitude,
    NULL      AS source,
    NULL      AS source_link,
    getdate() AS created_at,
    getdate() AS updated_at;

INSERT INTO geolocation.continent
  SELECT
    1                                                                                                                                                                               AS continent_id,
    '?sia'                                                                                                                                                                          AS continent,
    NULL                                                                                                                                                                            AS income_per_capita,
    4436000000                                                                                                                                                                      AS population,
    23.8313873                                                                                                                                                                      AS latitude,
    62.5407311                                                                                                                                                                      AS longitude,
    'googlemaps'                                                                                                                                                                    AS source,
    'https://www.google.com.br/maps/place/%C3%81sia/@23.8313873,62.5407311,3z/data=!3m1!4b1!4m5!3m4!1s0x3663f18a24cbe857:0xa9416bfcd3a0f459!8m2!3d34.047863!4d100.6196553?hl=pt-BR' AS source_link,
    '2016-01-01'                                                                                                                                                                    AS source_created_at,
    getdate()                                                                                                                                                                       AS created_at,
    getdate()                                                                                                                                                                       AS updated_at;

INSERT INTO geolocation.continent
  SELECT
    2                                                                                                                                                                                               AS continent_id,
    'am?rica do norte'                                                                                                                                                                              AS continent,
    NULL                                                                                                                                                                                            AS income_per_capita,
    579000000                                                                                                                                                                                       AS population,
    31.7936407                                                                                                                                                                                      AS latitude,
    -146.3465006                                                                                                                                                                                    AS longitude,
    'googlemaps'                                                                                                                                                                                    AS source,
    'https://www.google.com.br/maps/place/Am%C3%A9rica+do+Norte/@31.7936407,-146.3465006,3z/data=!3m1!4b1!4m5!3m4!1s0x52b30b71698e729d:0x131328839761a382!8m2!3d54.5259614!4d-105.2551187?hl=pt-BR' AS source_link,
    '2016-01-01'                                                                                                                                                                                    AS source_created_at,
    getdate()                                                                                                                                                                                       AS created_at,
    getdate()                                                                                                                                                                                       AS updated_at;

INSERT INTO geolocation.continent
  SELECT
    3                                                                                                                                                                                          AS continent_id,
    'am?rica do sul'                                                                                                                                                                           AS continent,
    NULL                                                                                                                                                                                       AS income_per_capita,
    422000000                                                                                                                                                                                  AS population,
    -8.7831897                                                                                                                                                                                 AS latitude,
    -55.4936657                                                                                                                                                                                AS longitude,
    'googlemaps'                                                                                                                                                                               AS source,
    'https://www.google.com.br/maps/place/Am%C3%A9rica+do+Sul/@-8.7831897,-55.4936657,17z/data=!3m1!4b1!4m5!3m4!1s0x9409341c355d34b5:0x69d40ccfc9c6e32b!8m2!3d-8.783195!4d-55.491477?hl=pt-BR' AS source_link,
    '2016-01-01'                                                                                                                                                                               AS source_created_at,
    getdate()                                                                                                                                                                                  AS created_at,
    getdate()                                                                                                                                                                                  AS updated_at;

INSERT INTO geolocation.continent
  SELECT
    4                                                                                                                                                                                       AS continent_id,
    'am?rica central'                                                                                                                                                                       AS continent,
    NULL                                                                                                                                                                                    AS income_per_capita,
    45000000                                                                                                                                                                                AS population,
    11.9709453                                                                                                                                                                              AS latitude,
    -89.2106896                                                                                                                                                                             AS longitude,
    'googlemaps'                                                                                                                                                                            AS source,
    'https://www.google.com.br/maps/place/Central+America/@11.9709453,-89.2106896,6z/data=!3m1!4b1!4m5!3m4!1s0x8f0b58c0f7680811:0x8dace0c7060b2570!8m2!3d12.7690126!4d-85.6023643?hl=pt-BR' AS source_link,
    '2016-01-01'                                                                                                                                                                            AS source_created_at,
    getdate()                                                                                                                                                                               AS created_at,
    getdate()                                                                                                                                                                               AS updated_at;

INSERT INTO geolocation.continent
  SELECT
    5                                                                                                                                                                                AS continent_id,
    '?frica'                                                                                                                                                                         AS continent,
    NULL                                                                                                                                                                             AS income_per_capita,
    1216000000                                                                                                                                                                       AS population,
    -8.7831897                                                                                                                                                                       AS latitude,
    34.5063343                                                                                                                                                                       AS longitude,
    'googlemaps'                                                                                                                                                                     AS source,
    'https://www.google.com.br/maps/place/%C3%81frica/@-8.7831897,34.5063343,17z/data=!3m1!4b1!4m5!3m4!1s0x10a06c0a948cf5d5:0x108270c99e90f0b3!8m2!3d-8.783195!4d34.508523?hl=pt-BR' AS source_link,
    '2016-01-01'                                                                                                                                                                     AS source_created_at,
    getdate()                                                                                                                                                                        AS created_at,
    getdate()                                                                                                                                                                        AS updated_at;

INSERT INTO geolocation.continent
  SELECT
    6                                                                                                                                                                            AS continent_id,
    'ant?rtida'                                                                                                                                                                  AS continent,
    NULL                                                                                                                                                                         AS income_per_capita,
    NULL                                                                                                                                                                         AS population,
    -82.8627513                                                                                                                                                                  AS latitude,
    134.9978113                                                                                                                                                                  AS longitude,
    'googlemaps'                                                                                                                                                                 AS source,
    'https://www.google.com.br/maps/place/Antarctica/@-82.8627513,134.9978113,17z/data=!3m1!4b1!4m5!3m4!1s0xb09dff882a7809e1:0xb08d0a385dc8c7c7!8m2!3d-82.862752!4d135?hl=pt-BR' AS source_link,
    '2016-01-01'                                                                                                                                                                 AS source_created_at,
    getdate()                                                                                                                                                                    AS created_at,
    getdate()                                                                                                                                                                    AS updated_at;

INSERT INTO geolocation.continent
  SELECT
    7                                                                                                                                                                          AS continent_id,
    'europa'                                                                                                                                                                   AS continent,
    NULL                                                                                                                                                                       AS income_per_capita,
    743100000                                                                                                                                                                  AS population,
    48.132046                                                                                                                                                                  AS latitude,
    4.1707694                                                                                                                                                                  AS longitude,
    'googlemaps'                                                                                                                                                               AS source,
    'https://www.google.com.br/maps/place/Europa/@48.132046,4.1707694,4z/data=!3m1!4b1!4m5!3m4!1s0x46ed8886cfadda85:0x72ef99e6b3fcf079!8m2!3d54.5259614!4d15.2551187?hl=pt-BR' AS source_link,
    '2015-01-01'                                                                                                                                                               AS source_created_at,
    getdate()                                                                                                                                                                  AS created_at,
    getdate()                                                                                                                                                                  AS updated_at;

INSERT INTO geolocation.continent
  SELECT
    11                                                                                                                                                                                 AS continent_id,
    'oceania'                                                                                                                                                                          AS continent,
    NULL                                                                                                                                                                               AS income_per_capita,
    NULL                                                                                                                                                                               AS population,
    -22.7359045                                                                                                                                                                        AS latitude,
    140.0165766                                                                                                                                                                        AS longitude,
    'googlemaps'                                                                                                                                                                       AS source,
    'https://www.google.com.br/maps/place/Oceania/@-22.7359045,140.0165766,17z/data=!3m1!4b1!4m5!3m4!1s0x6e41bc2bfc38b041:0x4b6ab384c4ebeb6e!8m2!3d-22.7359095!4d140.0187653?hl=pt-BR' AS source_link,
    '2015-01-01'                                                                                                                                                                       AS source_created_at,
    getdate()                                                                                                                                                                          AS created_at,
    getdate()                                                                                                                                                                          AS updated_at;

