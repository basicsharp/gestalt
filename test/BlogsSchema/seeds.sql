CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

INSERT INTO users (id, email, password_hash, created_at, first_name, last_name)
VALUES
  ('00000000-0000-0000-0000-000000000001', 'test1@test.com', 'password', now(), 'chester', 'tester'),
  ('00000000-0000-0000-0000-000000000002', 'test2@test.com', 'password', now(), 'lester', 'tester'),
  ('00000000-0000-0000-0000-000000000003', 'test3@test.com', 'password', now(), 'wester', 'tester');

INSERT INTO user_followed_users (user_id, followed_user_id)
VALUES
  ('00000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000002'),
  ('00000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000003'),
  ('00000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000001');

INSERT INTO posts (id, title, text, created_at, authored_by_user_id)
VALUES
  ('00000000-0000-0000-0000-000000000004', 'yoooo!', 'lorem ipsum', now(), '00000000-0000-0000-0000-000000000001'),
  ('00000000-0000-0000-0000-000000000005', 'wadup!', 'lorem ipsum', now(), '00000000-0000-0000-0000-000000000002'),
  ('00000000-0000-0000-0000-000000000006', 'heeey!', 'lorem ipsum', now(), '00000000-0000-0000-0000-000000000003');

INSERT INTO comments (id, text, created_at, authored_by_user_id, inspired_by_post_id)
VALUES
  ('00000000-0000-0000-0000-000000000007', 'hey', now(), '00000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000004'),
  ('00000000-0000-0000-0000-000000000008', 'hey', now(), '00000000-0000-0000-0000-000000000003', '00000000-0000-0000-0000-000000000005'),
  ('00000000-0000-0000-0000-000000000009', 'hey', now(), '00000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000006');
