-- MODEL (
--   name sqlmesh_example.full_model,
--   kind FULL,
--   cron '@daily',
--   audits [assert_positive_order_ids],
-- );

-- SELECT
--   item_id,
--   count(distinct id) AS num_orders,
-- FROM
--     sqlmesh_example.incremental_model
-- GROUP BY item_id


MODEL (
  name sql_mesh_fake_users.full_model,
  kind FULL,
  cron '@daily',
  audits [assert_positive_order_ids],
);


SELECT
  id,
  username,
  last_attention_at,
  count(distinct id) as number_of_views,
FROM
  sql_mesh_fake_users.incremental_model
GROUP BY last_attention_at 