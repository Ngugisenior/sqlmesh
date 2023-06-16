-- MODEL (
--     name sqlmesh_example.seed_model,
--     kind SEED (
--         path '../seeds/seed_data.csv'
--     ),
--     columns (
--         id INTEGER,
--         item_id INTEGER,
--         ds VARCHAR
--     )
-- );


MODEL (
    name sql_mesh_fake_users.seed_model,
    kind SEED (
        path '../seeds/seed_fake_user.csv'
    ),
    columns(
        id INTEGER,
        username VARCHAR,
        last_attention_at DATE
    )
);