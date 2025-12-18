-- Auto-generated from schema-map-postgres.yaml (map@sha1:621FDD3D99B768B6A8AD92061FB029414184F4B3)
-- engine: postgres
-- table:  slo_status

CREATE INDEX IF NOT EXISTS idx_slo_status_window ON slo_status (window_id, computed_at);
