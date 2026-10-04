# SNOW-02 Runtime Proof Checklist

This checklist is evidence for the Snowflake CoCo CLI Hackathon submission.

## Required live proof

Record the following in one continuous screen recording:

1. Open CoCo CLI.
2. Show the active Snowflake connection/account.
3. Ask CoCo CLI to create/use `CAIOS_COCO.APP`.
4. Execute `snowflake/01_schema.sql`.
5. Execute `snowflake/02_seed.sql`.
6. Query:
   ```sql
   SELECT * FROM CAIOS_COCO.APP.PET_360
   WHERE pet_id='PET-PIKA'
   ORDER BY observed_at;
   ```
7. Execute the aggregation/evidence queries in `snowflake/03_golden_path.sql`.
8. Execute the deterministic safety query and show:
   `PROFESSIONAL_REVIEW`.
9. Open the Streamlit prototype.
10. Ask:
   "What changed in Pika's eating and stool pattern over the last 30 days?"
11. Show the answer, evidence IDs, and non-diagnostic safety message.

## Evidence to capture

- CoCo CLI visible in the recording.
- Snowflake query results visible.
- At least one working Input → Processing → Output workflow.
- Three demonstrated capabilities:
  - longitudinal Pet 360,
  - evidence retrieval,
  - deterministic safety gate.

## Pass criteria

SNOW-02 passes only when an actual CoCo CLI execution is observed.
SNOW-03 passes only when the live Snowflake golden path returns the expected rows and `PROFESSIONAL_REVIEW`.
