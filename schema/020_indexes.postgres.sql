-- Auto-generated from schema-map-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  slo_status
CREATE INDEX IF NOT EXISTS idx_slo_status_window ON slo_status (window_id, computed_at);
