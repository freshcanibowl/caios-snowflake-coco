# Prototype Deck — 7 Slides

## Slide 1 — CAIOS
**Longitudinal Companion Health Intelligence**
Snowflake CoCo CLI Hackathon 2026 — GCC Edition

A governed 360° health story from fragmented observations and evidence.

## Slide 2 — Problem
Pet health context is fragmented.
- Feeding changes live in one place.
- Stool/activity observations live elsewhere.
- Clinical evidence is unstructured.
- Isolated AI answers lose longitudinal context.

**Primary contradiction:** useful AI needs context, but health decisions also need provenance and safety boundaries.

## Slide 3 — Solution
CAIOS reconstructs the timeline before reasoning.

**Synthetic observations → Pet 360 → Evidence → Safety gate → Cited answer**

Three MVP capabilities:
1. Longitudinal Pet 360
2. Evidence-grounded retrieval
3. Safety-aware escalation

## Slide 4 — Snowflake + CoCo CLI
CoCo CLI drives the development/execution workflow.

Snowflake stores:
- PETS
- OBSERVATIONS
- EVIDENCE_DOCS
- PET_360 governed view

Golden path:
Input → CoCo CLI → Snowflake processing → evidence/risk output → Streamlit.

## Slide 5 — Demo: Pika
Synthetic Pika timeline:
- meal completion declines,
- stool changes from formed to loose,
- activity becomes lower.

Question:
"What changed in Pika's eating and stool pattern over the last 30 days?"

Output:
- longitudinal pattern,
- evidence IDs,
- **PROFESSIONAL_REVIEW**.

## Slide 6 — Safety + Governance
CAIOS separates:
**Observation ≠ inference ≠ diagnosis**

The prototype:
- uses synthetic data,
- cites evidence IDs,
- applies a deterministic safety gate,
- escalates higher-risk patterns,
- does not diagnose, prescribe or replace veterinary judgment.

## Slide 7 — Why It Matters
Today: one synthetic companion-health workflow.

Next:
- governed longitudinal evidence,
- professional summaries,
- consented real-world integrations,
- outcome-linked evidence.

**CAIOS: from fragmented pet data to auditable longitudinal decision context.**
