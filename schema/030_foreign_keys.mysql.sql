-- Auto-generated from schema-map-mysql.psd1 (map@62c9c93)
-- engine: mysql
-- table:  slo_status
ALTER TABLE slo_status ADD CONSTRAINT fk_slo_status_window FOREIGN KEY (window_id) REFERENCES slo_windows(id) ON DELETE CASCADE;
