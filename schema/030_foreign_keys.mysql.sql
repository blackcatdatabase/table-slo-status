-- Auto-generated from schema-map-mysql.yaml (map@sha1:09DF9CA612D1573E058190CC207FA257C05AEC1F)
-- engine: mysql
-- table:  slo_status

ALTER TABLE slo_status ADD CONSTRAINT fk_slo_status_window FOREIGN KEY (window_id) REFERENCES slo_windows(id) ON DELETE CASCADE;
