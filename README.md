# CAIOS — Longitudinal Companion Health Intelligence

Snowflake CoCo CLI Hackathon 2026 — GCC Edition submission artifact.

## Challenge
Patient and Member 360 and Clinical or Regulatory Document Copilot

## What this prototype demonstrates
CAIOS turns fragmented synthetic companion-health observations and supporting evidence into:
1. a longitudinal Pet 360 view,
2. an evidence-grounded answer with provenance,
3. a safety-aware escalation decision.

The public repo contains only synthetic hackathon data and isolated adapter code. The private CAIOS production system is not included.

## Golden path
Synthetic Pika data → Snowflake tables → longitudinal 360 → evidence retrieval → risk classification → cited answer → Streamlit UI.

## Run order
1. Run `snowflake/01_schema.sql`
2. Run `snowflake/02_seed.sql`
3. Run `snowflake/03_golden_path.sql`
4. Launch `streamlit_app.py` in Snowflake Streamlit or a compatible environment.
5. Use CoCo CLI to execute the end-to-end workflow described in `docs/COCO_CLI_WORKFLOW.md`.

## Safety boundary
This prototype is educational and non-diagnostic. It does not diagnose disease, prescribe treatment, change medication, or replace veterinary judgment. Higher-risk patterns are escalated for professional review.
