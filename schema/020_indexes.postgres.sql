-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  slo_status

CREATE INDEX IF NOT EXISTS idx_slo_status_window ON slo_status (window_id, computed_at);
