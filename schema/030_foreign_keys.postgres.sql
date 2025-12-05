-- Auto-generated from schema-map-postgres.yaml (map@sha1:F0EE237771FBA8DD7C4E886FF276F91A862C3718)
-- engine: postgres
-- table:  slo_status

ALTER TABLE slo_status ADD CONSTRAINT fk_slo_status_window FOREIGN KEY (window_id) REFERENCES slo_windows(id) ON DELETE CASCADE;
