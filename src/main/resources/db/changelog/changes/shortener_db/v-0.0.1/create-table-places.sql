-- liquibase formatted sql

-- changeset liquibase:0

CREATE TABLE IF NOT EXISTS places
(
    id                INT PRIMARY KEY,
    name              VARCHAR(255) NOT NULL,
    short_description VARCHAR(255) NOT NULL,
    map_link          TEXT         NOT NULL,
    description_link  TEXT         NOT NULL,
    lat               DOUBLE       NOT NULL,
    lon               DOUBLE       NOT NULL
);


