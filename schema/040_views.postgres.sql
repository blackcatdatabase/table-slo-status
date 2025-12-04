-- Auto-generated from schema-views-postgres.yaml (map@74ce4f4)
-- engine: postgres
-- table:  slo_status

-- Contract view for [slo_status]
CREATE OR REPLACE VIEW vw_slo_status AS
SELECT
  id,
  window_id,
  computed_at,
  sli_value,
  good_events,
  total_events,
  status
FROM slo_status;
