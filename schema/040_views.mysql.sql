-- Auto-generated from schema-views-mysql.yaml (map@4ae85c5)
-- engine: mysql
-- table:  slo_status

-- Contract view for [slo_status]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_slo_status AS
SELECT
  id,
  window_id,
  computed_at,
  sli_value,
  good_events,
  total_events,
  status
FROM slo_status;
