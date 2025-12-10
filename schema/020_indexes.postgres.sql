-- Auto-generated from schema-map-postgres.yaml (map@sha1:6D9B52237D942B2B3855FD0F5500331B935A7C62)
-- engine: postgres
-- table:  slo_status

CREATE INDEX IF NOT EXISTS idx_slo_status_window ON slo_status (window_id, computed_at);
