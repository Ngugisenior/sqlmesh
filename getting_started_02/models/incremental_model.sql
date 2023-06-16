-- MODEL (
--     name sqlmesh_example.incremental_model,
--     kind INCREMENTAL_BY_TIME_RANGE (
--         time_column ds
--     ),
--     start '2020-01-01',
--     cron '@daily',
-- );

-- SELECT
--     id,
--     item_id,
--     ds,
-- FROM
--     sqlmesh_example.seed_model
-- WHERE
--     ds between @start_ds and @end_ds


MODEL(
    name sql_mesh_fake_users.incremental_model,
    kind INCREMENTAL_BY_TIME_RANGE(
        time_column last_attention_at
    ),
    start '2015-0-01',
    cron '@daily',
);

SELECT
    id,
    username,
    last_attention_at,
FROM
    sql_mesh_fake_users.seed_model
WHERE last_attention_at between @start and end_last_attention_at