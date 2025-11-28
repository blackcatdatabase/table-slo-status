-- Auto-generated from schema-views-mysql.psd1 (map@mtime:2025-11-27T15:35:35Z)
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
