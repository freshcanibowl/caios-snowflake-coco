# Final 3–5 Minute Demo Script

## 0:00–0:25 — Problem
Companion-health data is fragmented across feeding logs, stool observations, activity changes and clinical evidence. A single AI answer without longitudinal context can miss the pattern.

CAIOS demonstrates a governed companion-health 360 built with Snowflake and CoCo CLI.

## 0:25–0:50 — Architecture
Show the repository architecture:
Synthetic Pika data → CoCo CLI → Snowflake tables → PET_360 → evidence retrieval → deterministic safety gate → evidence-grounded output → Streamlit.

State clearly: all demo data is synthetic and the prototype is non-diagnostic.

## 0:50–1:45 — Capability 1: Longitudinal 360
In CoCo CLI, execute the schema and seed workflow.
Query PET-PIKA from CAIOS_COCO.APP.PET_360.
Show the ordered appetite, stool and activity observations.

Explain that the system reconstructs the timeline before reasoning.

## 1:45–2:35 — Capability 2: Evidence retrieval
Ask:
"What changed in Pika's eating and stool pattern over the last 30 days?"

Run the aggregation and evidence queries.
Show appetite declining, stool changing to loose, and the evidence IDs.

Explain that answers remain traceable to observation and evidence records.

## 2:35–3:15 — Capability 3: Safety gate
Run the deterministic risk query.
Show PROFESSIONAL_REVIEW.

Explain:
AI does not diagnose or prescribe. The safety gate is evaluated before presenting the answer.

## 3:15–3:50 — Working prototype
Open the public Streamlit deployment.
Show:
- Pet 360
- 30-day longitudinal story
- question
- cited evidence IDs
- PROFESSIONAL_REVIEW
- non-diagnostic boundary

## 3:50–4:10 — Close
CAIOS turns fragmented observations into longitudinal, evidence-connected decision context.

The hackathon prototype demonstrates one complete input → processing → output workflow using synthetic data, with three modular capabilities: longitudinal reconstruction, evidence retrieval and safety-aware escalation.
