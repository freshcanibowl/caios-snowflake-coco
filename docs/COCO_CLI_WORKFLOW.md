# CoCo CLI end-to-end workflow

The hackathon demo must show CoCo CLI executing the workflow, not only a finished UI.

## Demo workflow

### Capability 1 — Build the longitudinal 360
Ask CoCo CLI to:
1. create/use the CAIOS_COCO database and APP schema,
2. execute `snowflake/01_schema.sql`,
3. execute `snowflake/02_seed.sql`,
4. query `CAIOS_COCO.APP.PET_360` for PET-PIKA.

Expected output: ordered synthetic observations for Pika.

### Capability 2 — Retrieve evidence for a natural-language question
Question:
"What changed in Pika's eating and stool pattern over the last 30 days?"

Use CoCo CLI to run the aggregation and evidence queries in `snowflake/03_golden_path.sql`.

Expected output:
- appetite completion declines across the period,
- stool changes from formed/soft to loose,
- evidence rows with IDs and sources.

### Capability 3 — Apply the safety gate
Run the deterministic risk query in `snowflake/03_golden_path.sql`.

Expected output:
`PROFESSIONAL_REVIEW`

Then present the answer with citations to OBS/EVID identifiers. Do not present a diagnosis or treatment recommendation.

## Screen-recording requirement
Record:
Input → CoCo CLI processing → Snowflake output → Streamlit result.

The recording should explicitly show the 2–3 capabilities above.
