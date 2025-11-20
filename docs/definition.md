<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – slo_status

Computed status entries for service-level objectives.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| window_id | BIGINT | NO | — | SLO window (FK slo_windows.id). |  |
| computed_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Timestamp when the SLO was evaluated. |  |
| sli_value | NUMERIC(18,6) | YES | — | Measured SLI value. |  |
| good_events | BIGINT | NO | 0 | Number of good events counted. |  |
| total_events | BIGINT | NO | 0 | Total events observed. |  |
| status | TEXT | NO | 'unknown' | Evaluation result. | enum: good, breach, unknown |