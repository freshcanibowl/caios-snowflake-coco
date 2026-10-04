-- 1) Longitudinal Pet 360
SELECT *
FROM CAIOS_COCO.APP.PET_360
WHERE pet_id='PET-PIKA'
ORDER BY observed_at;

-- 2) Summarize relevant changes in the last 30 days
SELECT
  category,
  COUNT(*) AS observation_count,
  MIN(observed_at) AS first_seen,
  MAX(observed_at) AS last_seen,
  LISTAGG(value_text, ' | ') WITHIN GROUP (ORDER BY observed_at) AS timeline
FROM CAIOS_COCO.APP.OBSERVATIONS
WHERE pet_id='PET-PIKA'
  AND observed_at >= DATEADD(day,-30,'2026-09-22'::DATE)
GROUP BY category
ORDER BY category;

-- 3) Retrieve supporting evidence
SELECT evidence_id,title,evidence_type,content,source
FROM CAIOS_COCO.APP.EVIDENCE_DOCS
WHERE pet_id='PET-PIKA'
ORDER BY created_at;

-- 4) Deterministic risk signal used before any LLM answer
SELECT
  IFF(
    SUM(IFF(category='appetite' AND severity IN ('MEDIUM','HIGH'),1,0)) >= 2
    AND SUM(IFF(category='stool' AND severity IN ('MEDIUM','HIGH'),1,0)) >= 1,
    'PROFESSIONAL_REVIEW',
    'LOW_RISK'
  ) AS risk_class
FROM CAIOS_COCO.APP.OBSERVATIONS
WHERE pet_id='PET-PIKA'
  AND observed_at >= DATEADD(day,-14,'2026-09-22'::DATE);
