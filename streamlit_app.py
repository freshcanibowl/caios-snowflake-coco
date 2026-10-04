import streamlit as st

st.set_page_config(page_title="CAIOS Snowflake CoCo", layout="wide")
st.title("CAIOS — Longitudinal Companion Health Intelligence")
st.caption("Synthetic Pika demo • Non-diagnostic • Snowflake CoCo CLI Hackathon")

st.subheader("Pet 360")
st.write("Pika • Dog • Pomeranian • 4.8 kg")

st.subheader("30-day longitudinal story")
st.write(
    "Meal completion declined from full meals to leaving most of dinner. "
    "Stool changed from formed to loose, and activity was later noted as lower than usual."
)

st.subheader("Evidence-grounded answer")
question = st.text_input(
    "Ask",
    value="What changed in Pika's eating and stool pattern over the last 30 days?"
)

if question:
    st.markdown(
        """
**Answer:** Pika's meal completion shows a downward pattern, while stool consistency changed from formed to soft and then loose. These changes occurred in the same recent window.

**Evidence**
- OBS-001 / OBS-002 / OBS-003 / OBS-005 — appetite timeline
- OBS-004 / OBS-006 — stool timeline
- EVID-001 — longitudinal owner observation summary

**Safety decision:** PROFESSIONAL_REVIEW

This is an observed pattern, not a diagnosis. Because reduced appetite, gastrointestinal change, and lower activity occur together, the prototype recommends professional review rather than autonomous treatment advice.
"""
    )
