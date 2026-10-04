INSERT OVERWRITE INTO CAIOS_COCO.APP.PETS
SELECT * FROM VALUES
('PET-PIKA','Pika','Dog','Pomeranian','2021-04-15'::DATE,4.80)
AS t(pet_id,name,species,breed,birth_date,weight_kg);

INSERT OVERWRITE INTO CAIOS_COCO.APP.OBSERVATIONS
SELECT * FROM VALUES
('OBS-001','PET-PIKA','2026-09-08 18:30:00'::TIMESTAMP_NTZ,'appetite','Finished 100% of dinner','LOW','Synthetic owner log','demo://pika/day1'),
('OBS-002','PET-PIKA','2026-09-12 18:30:00'::TIMESTAMP_NTZ,'appetite','Finished about 75% of dinner','LOW','Synthetic owner log','demo://pika/day5'),
('OBS-003','PET-PIKA','2026-09-16 18:30:00'::TIMESTAMP_NTZ,'appetite','Finished about 50% of dinner','MEDIUM','Synthetic owner log','demo://pika/day9'),
('OBS-004','PET-PIKA','2026-09-17 08:00:00'::TIMESTAMP_NTZ,'stool','Soft but formed stool','LOW','Synthetic owner log','demo://pika/day10'),
('OBS-005','PET-PIKA','2026-09-20 18:30:00'::TIMESTAMP_NTZ,'appetite','Left most of dinner','MEDIUM','Synthetic owner log','demo://pika/day13'),
('OBS-006','PET-PIKA','2026-09-21 07:40:00'::TIMESTAMP_NTZ,'stool','Loose stool','MEDIUM','Synthetic owner log','demo://pika/day14'),
('OBS-007','PET-PIKA','2026-09-22 07:50:00'::TIMESTAMP_NTZ,'activity','Less playful than usual','MEDIUM','Synthetic owner log','demo://pika/day15')
AS t(observation_id,pet_id,observed_at,category,value_text,severity,source,provenance);

INSERT OVERWRITE INTO CAIOS_COCO.APP.EVIDENCE_DOCS
SELECT * FROM VALUES
('EVID-001','PET-PIKA','Owner observation summary','HOME_LOG',
 'Over the last two weeks, meal completion decreased from full meals to leaving most of dinner. Stool changed from normal to soft and then loose. Activity was also noted as lower than usual.',
 'Synthetic longitudinal summary','2026-09-22 09:00:00'::TIMESTAMP_NTZ),
('EVID-002','PET-PIKA','Safety boundary','POLICY',
 'The system must not diagnose, prescribe, or replace veterinary judgment. Persistent appetite reduction combined with gastrointestinal changes or reduced activity should be surfaced for professional review.',
 'CAIOS demo safety policy','2026-09-22 09:05:00'::TIMESTAMP_NTZ)
AS t(evidence_id,pet_id,title,evidence_type,content,source,created_at);
