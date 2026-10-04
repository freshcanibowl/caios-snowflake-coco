from pathlib import Path

required = [
    Path("README.md"),
    Path("snowflake/01_schema.sql"),
    Path("snowflake/02_seed.sql"),
    Path("snowflake/03_golden_path.sql"),
    Path("streamlit_app.py"),
    Path("docs/COCO_CLI_WORKFLOW.md"),
    Path("docs/ARCHITECTURE.md"),
]

missing = [str(p) for p in required if not p.exists()]
assert not missing, f"Missing required submission files: {missing}"

seed = Path("snowflake/02_seed.sql").read_text()
golden = Path("snowflake/03_golden_path.sql").read_text()

assert "PET-PIKA" in seed
assert "PROFESSIONAL_REVIEW" in golden
assert "PET_360" in golden

print("Golden-path static validation: PASS")
