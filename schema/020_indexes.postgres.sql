-- Auto-generated from schema-map-postgres.yaml (map@74ce4f4)
-- engine: postgres
-- table:  slo_status

CREATE INDEX IF NOT EXISTS idx_slo_status_window ON slo_status (window_id, computed_at);
