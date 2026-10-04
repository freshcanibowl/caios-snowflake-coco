CREATE DATABASE IF NOT EXISTS CAIOS_COCO;
CREATE SCHEMA IF NOT EXISTS CAIOS_COCO.APP;

CREATE OR REPLACE TABLE CAIOS_COCO.APP.PETS (
  pet_id STRING PRIMARY KEY,
  name STRING,
  species STRING,
  breed STRING,
  birth_date DATE,
  weight_kg NUMBER(10,2)
);

CREATE OR REPLACE TABLE CAIOS_COCO.APP.OBSERVATIONS (
  observation_id STRING PRIMARY KEY,
  pet_id STRING,
  observed_at TIMESTAMP_NTZ,
  category STRING,
  value_text STRING,
  severity STRING,
  source STRING,
  provenance STRING
);

CREATE OR REPLACE TABLE CAIOS_COCO.APP.EVIDENCE_DOCS (
  evidence_id STRING PRIMARY KEY,
  pet_id STRING,
  title STRING,
  evidence_type STRING,
  content STRING,
  source STRING,
  created_at TIMESTAMP_NTZ
);

CREATE OR REPLACE VIEW CAIOS_COCO.APP.PET_360 AS
SELECT
  p.pet_id,
  p.name,
  p.species,
  p.breed,
  p.birth_date,
  p.weight_kg,
  o.observation_id,
  o.observed_at,
  o.category,
  o.value_text,
  o.severity,
  o.source,
  o.provenance
FROM CAIOS_COCO.APP.PETS p
LEFT JOIN CAIOS_COCO.APP.OBSERVATIONS o
  ON p.pet_id = o.pet_id;
