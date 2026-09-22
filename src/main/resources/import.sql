INSERT INTO users (id, name, email, phone, birth_date, password) VALUES ('11111111-1111-1111-1111-111111111111', 'Maria Silva', 'maria.silva@gmail.com', '11988887777', '1990-05-12', '$2a$10$abcdefghijklmnopqrstuv');
INSERT INTO users (id, name, email, phone, birth_date, password) VALUES ('22222222-2222-2222-2222-222222222222', 'Joao Souza', 'joao.souza@gmail.com', '11977776666', '1988-11-23', '$2a$10$abcdefghijklmnopqrstuv');
INSERT INTO users (id, name, email, phone, birth_date, password) VALUES ('33333333-3333-3333-3333-333333333333', 'Ana Pereira', 'ana.pereira@gmail.com', '11966665555', '1995-02-08', '$2a$10$abcdefghijklmnopqrstuv');

INSERT INTO categories (id, name) VALUES ('aaaaaaaa-0000-0000-0000-000000000001', 'Eletronicos');
INSERT INTO categories (id, name) VALUES ('aaaaaaaa-0000-0000-0000-000000000002', 'Informatica');
INSERT INTO categories (id, name) VALUES ('aaaaaaaa-0000-0000-0000-000000000003', 'Livros');
INSERT INTO categories (id, name) VALUES ('aaaaaaaa-0000-0000-0000-000000000004', 'Casa e Cozinha');

INSERT INTO products (id, name, description, price, img_url) VALUES ('bbbbbbbb-0000-0000-0000-000000000001', 'Notebook Gamer 15"', 'Notebook com placa de video dedicada, 16GB RAM e SSD de 512GB.', 4999.90, 'https://example.com/img/notebook.jpg');
INSERT INTO products (id, name, description, price, img_url) VALUES ('bbbbbbbb-0000-0000-0000-000000000002', 'Mouse sem fio', 'Mouse sem fio com sensor optico de alta precisao.', 89.90, 'https://example.com/img/mouse.jpg');
INSERT INTO products (id, name, description, price, img_url) VALUES ('bbbbbbbb-0000-0000-0000-000000000003', 'Teclado Mecanico', 'Teclado mecanico RGB com switches azuis.', 249.90, 'https://example.com/img/teclado.jpg');
INSERT INTO products (id, name, description, price, img_url) VALUES ('bbbbbbbb-0000-0000-0000-000000000004', 'Clean Code', 'Livro sobre boas praticas de programacao, por Robert C. Martin.', 129.90, 'https://example.com/img/clean-code.jpg');
INSERT INTO products (id, name, description, price, img_url) VALUES ('bbbbbbbb-0000-0000-0000-000000000005', 'Cafeteira Eletrica', 'Cafeteira eletrica com capacidade para 30 xicaras.', 199.90, 'https://example.com/img/cafeteira.jpg');

INSERT INTO product_category (product_id, category_id) VALUES ('bbbbbbbb-0000-0000-0000-000000000001', 'aaaaaaaa-0000-0000-0000-000000000001');
INSERT INTO product_category (product_id, category_id) VALUES ('bbbbbbbb-0000-0000-0000-000000000001', 'aaaaaaaa-0000-0000-0000-000000000002');
INSERT INTO product_category (product_id, category_id) VALUES ('bbbbbbbb-0000-0000-0000-000000000002', 'aaaaaaaa-0000-0000-0000-000000000002');
INSERT INTO product_category (product_id, category_id) VALUES ('bbbbbbbb-0000-0000-0000-000000000003', 'aaaaaaaa-0000-0000-0000-000000000002');
INSERT INTO product_category (product_id, category_id) VALUES ('bbbbbbbb-0000-0000-0000-000000000004', 'aaaaaaaa-0000-0000-0000-000000000003');
INSERT INTO product_category (product_id, category_id) VALUES ('bbbbbbbb-0000-0000-0000-000000000005', 'aaaaaaaa-0000-0000-0000-000000000004');

INSERT INTO orders (id, moment, status, user_id) VALUES ('cccccccc-0000-0000-0000-000000000001', '2026-08-20 10:30:00', 1, '11111111-1111-1111-1111-111111111111');
INSERT INTO orders (id, moment, status, user_id) VALUES ('cccccccc-0000-0000-0000-000000000002', '2026-09-01 14:15:00', 3, '11111111-1111-1111-1111-111111111111');
INSERT INTO orders (id, moment, status, user_id) VALUES ('cccccccc-0000-0000-0000-000000000003', '2026-09-10 09:00:00', 0, '22222222-2222-2222-2222-222222222222');
INSERT INTO orders (id, moment, status, user_id) VALUES ('cccccccc-0000-0000-0000-000000000004', '2026-09-15 18:45:00', 4, '33333333-3333-3333-3333-333333333333');

INSERT INTO orders_items (order_id, product_id, quantity, price) VALUES ('cccccccc-0000-0000-0000-000000000001', 'bbbbbbbb-0000-0000-0000-000000000001', 1, 4999.90);
INSERT INTO orders_items (order_id, product_id, quantity, price) VALUES ('cccccccc-0000-0000-0000-000000000001', 'bbbbbbbb-0000-0000-0000-000000000002', 2, 89.90);
INSERT INTO orders_items (order_id, product_id, quantity, price) VALUES ('cccccccc-0000-0000-0000-000000000002', 'bbbbbbbb-0000-0000-0000-000000000003', 1, 249.90);
INSERT INTO orders_items (order_id, product_id, quantity, price) VALUES ('cccccccc-0000-0000-0000-000000000002', 'bbbbbbbb-0000-0000-0000-000000000004', 3, 129.90);
INSERT INTO orders_items (order_id, product_id, quantity, price) VALUES ('cccccccc-0000-0000-0000-000000000003', 'bbbbbbbb-0000-0000-0000-000000000005', 1, 199.90);
INSERT INTO orders_items (order_id, product_id, quantity, price) VALUES ('cccccccc-0000-0000-0000-000000000004', 'bbbbbbbb-0000-0000-0000-000000000002', 1, 89.90);

INSERT INTO payments (moment, order_id) VALUES ('2026-08-20 11:00:00', 'cccccccc-0000-0000-0000-000000000001');
INSERT INTO payments (moment, order_id) VALUES ('2026-09-01 15:00:00', 'cccccccc-0000-0000-0000-000000000002');
