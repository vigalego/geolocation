--creates structure of geolocation tables

DROP TABLE IF EXISTS geolocation.continent;

CREATE TABLE geolocation.continent (
  continent_id      BIGINT         NULL,
  continent         VARCHAR(255)   NULL,
  income_per_capita DECIMAL(16, 2) NULL,
  population        BIGINT         NULL,
  latitude          FLOAT(8)       NULL,
  longitude         FLOAT(8)       NULL,
  source            VARCHAR(255)   NULL,
  source_link       VARCHAR(2000)  NULL,
  source_created_at TIMESTAMP,
  created_at        TIMESTAMP,
  updated_at        TIMESTAMP,
  PRIMARY KEY (continent_id)
);

DROP TABLE IF EXISTS geolocation.country;

CREATE TABLE geolocation.country (
  continent_id      BIGINT         NULL,
  country_id        BIGINT         NULL,
  country           VARCHAR(255)   NULL,
  country_acronym   VARCHAR(2)     NULL,
  country_capital   VARCHAR(255)   NULL,
  income_per_capita DECIMAL(16, 2) NULL,
  population        BIGINT         NULL,
  latitude          FLOAT(8)       NULL,
  longitude         FLOAT(8)       NULL,
  source            VARCHAR(255)   NULL,
  source_link       VARCHAR(2000)  NULL,
  source_created_at TIMESTAMP,
  created_at        TIMESTAMP,
  updated_at        TIMESTAMP,
  PRIMARY KEY (country_id)
);

DROP TABLE IF EXISTS geolocation.region;

CREATE TABLE geolocation.region (
  region_id         BIGINT         NULL,
  region            VARCHAR(255)   NULL,
  region_acronym    VARCHAR(2)     NULL,
  ibge_region_id    BIGINT         NULL,
  income_per_capita DECIMAL(16, 2) NULL,
  population        BIGINT         NULL,
  latitude          FLOAT(8)       NULL,
  longitude         FLOAT(8)       NULL,
  source            VARCHAR(255)   NULL,
  source_link       VARCHAR(2000)  NULL,
  source_created_at TIMESTAMP,
  created_at        TIMESTAMP,
  updated_at        TIMESTAMP,
  PRIMARY KEY (region_id)
);

DROP TABLE IF EXISTS geolocation.state;

CREATE TABLE geolocation.state (
  country_id        BIGINT,
  region_id         BIGINT,
  state_id          BIGINT         NULL,
  state             VARCHAR(255)   NULL,
  state_acronym     VARCHAR(2)     NULL,
  ibge_state_id     BIGINT         NULL,
  income_per_capita DECIMAL(16, 2) NULL,
  population        BIGINT         NULL,
  latitude          FLOAT(8)       NULL,
  longitude         FLOAT(8)       NULL,
  source            VARCHAR(255)   NULL,
  source_link       VARCHAR(2000)  NULL,
  source_created_at TIMESTAMP,
  created_at        TIMESTAMP,
  updated_at        TIMESTAMP,
  PRIMARY KEY (state_id)
);

DROP TABLE IF EXISTS geolocation.city;

CREATE TABLE geolocation.city (
  country_id        BIGINT         NULL,
  state_id          BIGINT         NULL,
  ibge_id           BIGINT         NULL,
  city_id           BIGINT         NULL,
  city              VARCHAR(255)   NULL,
  ibge_city_id      BIGINT         NULL,
  cep               VARCHAR(15)    NULL,
  income_per_capita DECIMAL(16, 2) NULL,
  population        BIGINT         NULL,
  latitude          FLOAT(8)       NULL,
  longitude         FLOAT(8)       NULL,
  source            VARCHAR(255)   NULL,
  source_link       VARCHAR(2000)  NULL,
  source_created_at TIMESTAMP,
  created_at        TIMESTAMP,
  updated_at        TIMESTAMP,
  PRIMARY KEY (city_id)
);

DROP TABLE IF EXISTS geolocation.neighborhood;

CREATE TABLE geolocation.neighborhood (
  country_id           BIGINT         NULL,
  state_id             BIGINT         NULL,
  city_id              BIGINT         NULL,
  neighborhood_id      BIGINT         NULL,
  neighborhood         VARCHAR(255)   NULL,
  ibge_neighborhood_id BIGINT         NULL,
  cep                  VARCHAR(15)    NULL,
  income_per_capita    DECIMAL(16, 2) NULL,
  population           BIGINT         NULL,
  latitude             FLOAT(8)       NULL,
  longitude            FLOAT(8)       NULL,
  source               VARCHAR(255)   NULL,
  source_link          VARCHAR(2000)  NULL,
  source_created_at    TIMESTAMP,
  created_at           TIMESTAMP,
  updated_at           TIMESTAMP,
  PRIMARY KEY (neighborhood_id)
);

DROP TABLE IF EXISTS geolocation.address;

CREATE TABLE geolocation.address (
  country_id        BIGINT         NULL,
  state_id          BIGINT         NULL,
  ibge_id           BIGINT         NULL,
  ibge_sector_code  VARCHAR(255)   NULL,
  city_id           BIGINT         NULL,
  neighborhood_id   BIGINT         NULL,
  address_id        BIGINT         NULL,
  address           VARCHAR(255)   NULL,
  cep               VARCHAR(15)    NULL,
  income_per_capita DECIMAL(16, 2) NULL,
  population        BIGINT         NULL,
  latitude          FLOAT(8)       NULL,
  longitude         FLOAT(8)       NULL,
  source            VARCHAR(255)   NULL,
  source_link       VARCHAR(2000)  NULL,
  source_created_at TIMESTAMP,
  created_at        TIMESTAMP,
  updated_at        TIMESTAMP,
  PRIMARY KEY (address_id)
);

--creates structure for staiging cities

/*
DROP TABLE IF EXISTS geolocation.brazilian_cities;

CREATE TABLE geolocation.brazilian_cities (
  ibge_id    INT          NOT NULL,
  city       VARCHAR(255) NOT NULL,
  uf_id      INT          NOT NULL,
  uf_acronym VARCHAR(10)  NOT NULL,
  state      VARCHAR(255) NOT NULL,
  latitude   FLOAT(8)     NOT NULL,
  longitude  FLOAT(8)     NOT NULL,
  PRIMARY KEY (ibge_id)
);
*/
