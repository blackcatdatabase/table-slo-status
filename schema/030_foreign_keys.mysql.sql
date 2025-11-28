-- Auto-generated from schema-map-mysql.psd1 (map@mtime:2025-11-27T15:13:14Z)
-- engine: mysql
-- table:  slo_status

ALTER TABLE slo_status ADD CONSTRAINT fk_slo_status_window FOREIGN KEY (window_id) REFERENCES slo_windows(id) ON DELETE CASCADE;
