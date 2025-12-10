# slo_status

Computed status entries for service-level objectives.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| computed_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Timestamp when the SLO was evaluated. |
| good_events | BIGINT | NO | 0 | Number of good events counted. |
| id | BIGINT | NO |  | Surrogate primary key. |
| sli_value | mysql: DECIMAL(18,6) / postgres: NUMERIC(18,6) | YES |  | Measured SLI value. |
| status | mysql: ENUM('good','breach','unknown') / postgres: TEXT | NO | unknown | Evaluation result. (enum: good, breach, unknown) |
| total_events | BIGINT | NO | 0 | Total events observed. |
| window_id | BIGINT | NO |  | SLO window (FK slo_windows.id). |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| uq_slo_status_window | window_id, computed_at |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_slo_status_window | window_id,computed_at | INDEX idx_slo_status_window (window_id, computed_at) |
| uq_slo_status_window | window_id,computed_at | UNIQUE KEY uq_slo_status_window (window_id, computed_at) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_slo_status_window | window_id | slo_windows(id) | ON DELETE CASCADE |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| uq_slo_status_window | window_id, computed_at |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_slo_status_window | window_id,computed_at | CREATE INDEX IF NOT EXISTS idx_slo_status_window ON slo_status (window_id, computed_at) |
| uq_slo_status_window | window_id,computed_at | CONSTRAINT uq_slo_status_window UNIQUE (window_id, computed_at) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_slo_status_window | window_id | slo_windows(id) | ON DELETE CASCADE |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_slo_status | mysql | algorithm=MERGE, security=INVOKER | [schema\040_views.mysql.sql](schema\040_views.mysql.sql) |
| vw_slo_status | postgres |  | [schema\040_views.postgres.sql](schema\040_views.postgres.sql) |
