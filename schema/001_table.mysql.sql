-- Auto-generated from schema-map-mysql.yaml (map@4ae85c5)
-- engine: mysql
-- table:  slo_status

CREATE TABLE IF NOT EXISTS slo_status (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  window_id BIGINT UNSIGNED NOT NULL,
  computed_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  sli_value DECIMAL(18,6) NULL,
  good_events BIGINT UNSIGNED NOT NULL DEFAULT 0,
  total_events BIGINT UNSIGNED NOT NULL DEFAULT 0,
  status ENUM('good','breach','unknown') NOT NULL DEFAULT 'unknown',
  UNIQUE KEY ux_slo_status (window_id, computed_at),
  INDEX idx_slo_status_window (window_id, computed_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
