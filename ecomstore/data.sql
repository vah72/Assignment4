use ecomstore;

insert into auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined)
values('4', 'pbkdf2_sha256$390000$KUy930exZDSGNxzzx4inE5$/TBChU0ZXSDihBe9CypJJ71dZcr+saI1AveyL9pO2BY=', NULL, '1', 'admin', '', '', 'admin@gmail.com', '1', '1', '2023-03-09 05:25:52.354625');
insert into auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined)
values('5', 'pbkdf2_sha256$390000$oodwsOEdQeb1qF83FjWvJ7$uyPlUq2uWlcEb6yTb6u/v6xr2Rjqzd2yAYZZjOttgZU=', '2023-03-09 05:28:41.108809', '0', 'username', '', '', '', '0', '1', '2023-03-09 05:28:03.377147');

insert into categories (id, name, slug, description, is_active, meta_keywords, meta_description, created_at, updated_at) 
values('6', 'Book', 'book', 'Books  improve memory, increase focus and concentration, reduce stress levels, enhance empathy and creativity, and better cognitive function.', '1', 'book', 'book', '2023-03-07 11:52:19.846258', '2023-03-07 11:52:19.846258');
insert into categories (id, name, slug, description, is_active, meta_keywords, meta_description, created_at, updated_at) 
values('7', 'Clothes', 'clothes', 'Clothing can insulate against cold or hot conditions, and it can provide a hygienic barrier, keeping infectious and toxic materials away from the body.', '1', 'clothes', 'clothes', '2023-03-07 11:53:04.352112', '2023-03-07 11:53:04.352112');
insert into categories (id, name, slug, description, is_active, meta_keywords, meta_description, created_at, updated_at) 
values('8', 'Shoes', 'shoes', 'Shoes cushion our body weight, protect our feet, and allow us to safety play sports', '1', 'shoes', 'shoes', '2023-03-07 11:54:35.895620', '2023-03-07 11:54:35.895620');
insert into categories (id, name, slug, description, is_active, meta_keywords, meta_description, created_at, updated_at) 
values('9', 'Electronics', 'electronics', 'Electronic Devices make our lives easier', '1', 'electronics', 'electronics', '2023-03-07 11:55:28.403371', '2023-03-07 11:55:28.403371');
insert into categories (id, name, slug, description, is_active, meta_keywords, meta_description, created_at, updated_at) 
values('10', 'Food', 'food', 'Provide healthy food which helps us reduce risk to increased longevity and better immunity', '1', 'food', 'food', '2023-03-07 11:56:46.378221', '2023-03-07 11:56:46.378221');

insert into products (id, name, slug, brand, sku, price, old_price, image, is_active, is_bestseller, is_featured, quantity, description, meta_keywords, meta_description, created_at, updated_at)
values ('12', 'Beginning Django E-commerce', 'beginning-django-e-commerce', 'The expert\'s voice', '10001', '9.99', '9.99', 'images/products/main/BeginningDjango.png', '1', '0', '0', '4', 'Beginning Django E-commerce', 'django', 'django', '2023-03-07 12:03:14.060355', '2023-03-07 12:03:14.060355');
insert into products (id, name, slug, brand, sku, price, old_price, image, is_active, is_bestseller, is_featured, quantity, description, meta_keywords, meta_description, created_at, updated_at)
values ('13', 'The Things You Can See Only When You Slow Down', 'the-things-you-can-see-only-when-you-slow-down', 'Book1', '10002', '7.72', '7.72', 'images/products/main/theThings.png', '1', '0', '0', '8', 'The Things You Can Do Only When You Slow Down : How To Be a Busy World', 'book1', 'book1', '2023-03-07 12:12:00.774398', '2023-03-08 14:49:53.696979');
insert into products (id, name, slug, brand, sku, price, old_price, image, is_active, is_bestseller, is_featured, quantity, description, meta_keywords, meta_description, created_at, updated_at)
values ('18', 'It Ends With Us', 'it-ends-with-us', 'Collen Hoover', '67892', '6.68', '6.68', 'images/products/main/81s0B6NYXML._AC_UL254_SR254254_.jpg', '1', '1', '0', '10', 'It Ends WIth Us', 'book', 'book', '2023-03-09 04:50:00.477446', '2023-03-09 04:50:00.477446');
insert into products (id, name, slug, brand, sku, price, old_price, image, is_active, is_bestseller, is_featured, quantity, description, meta_keywords, meta_description, created_at, updated_at)
values ('19', 'It Starts With Us', 'it-starts-with-us', 'Collen Hoover', '67893', '7.12', '7.12', 'images/products/main/71PNGYHykrL._AC_UL254_SR254254_.jpg', '1', '1', '0', '10', 'It Starts WIth Us', 'book', 'book', '2023-03-09 04:51:42.285442', '2023-03-09 04:51:42.285442');
insert into products (id, name, slug, brand, sku, price, old_price, image, is_active, is_bestseller, is_featured, quantity, description, meta_keywords, meta_description, created_at, updated_at)
values ('20', 'Love You To The Moon And Back', 'love-you-to-the-moon-and-back', 'Book', '25673', '5.59', '5.59', 'images/products/main/8144Vic9C5L.jpg', '1', '0', '0', '9', 'Love you to the moon and back', 'book', 'book', '2023-03-09 04:52:39.732312', '2023-03-09 04:52:39.732312');
insert into products (id, name, slug, brand, sku, price, old_price, image, is_active, is_bestseller, is_featured, quantity, description, meta_keywords, meta_description, created_at, updated_at)
values ('21', 'Adidas Duramo 10', 'adidas-duramo-10', 'Adidas', 'GW8336', '12.99', '12.99', 'images/products/main/GW8336-1_1024x10242x.webp', '1', '1', '0', '6', 'Adidas Duramo 10', 'shoes', 'shoes', '2023-03-09 04:54:09.099259', '2023-03-09 04:54:09.099259');
insert into products (id, name, slug, brand, sku, price, old_price, image, is_active, is_bestseller, is_featured, quantity, description, meta_keywords, meta_description, created_at, updated_at)
values ('22', 'Converse Chuck Tailor All Star', 'converse-chuck-tailor-all-star', 'Converse', '25675', '11.99', '11.99', 'images/products/main/screenshot_1678337745.png', '1', '1', '0', '7', 'Converse Chuck Tailor All Star', 'shoes', 'shoes', '2023-03-09 04:56:22.603779', '2023-03-09 04:56:22.603779');
insert into products (id, name, slug, brand, sku, price, old_price, image, is_active, is_bestseller, is_featured, quantity, description, meta_keywords, meta_description, created_at, updated_at)
values ('23', 'Fila Oakmont Tr', 'fila-oakmont-tr', 'Fila', '25676', '13.99', '13.99', 'images/products/main/screenshot_1678337805.png', '1', '0', '0', '11', 'Fila Oakmont Tr', 'shoes', 'shoes', '2023-03-09 04:57:24.785811', '2023-03-09 04:57:24.785811');
insert into products (id, name, slug, brand, sku, price, old_price, image, is_active, is_bestseller, is_featured, quantity, description, meta_keywords, meta_description, created_at, updated_at)
values ('24', 'New Balance 327 Classic Lifestyle', 'new-balance-327-classic-lifestyle', 'New Balance', '25677', '13.99', '13.99', 'images/products/main/screenshot_1678337971.png', '1', '1', '0', '11', 'New Balance 327 Classic Lifestyle', 'shoes', 'shoes', '2023-03-09 05:00:22.213741', '2023-03-09 05:00:22.213741');
insert into products (id, name, slug, brand, sku, price, old_price, image, is_active, is_bestseller, is_featured, quantity, description, meta_keywords, meta_description, created_at, updated_at)
values ('25', 'Puma Slipstream Lo Reprise', 'puma-slipstream-lo-reprise', 'Puma', '25678', '13.99', '13.99', 'images/products/main/screenshot_1678338039.png', '1', '0', '0', '11', 'Puma Slipstream Lo Reprise', 'shoes', 'shoes', '2023-03-09 05:01:22.024799', '2023-03-09 05:01:22.024799');
insert into products (id, name, slug, brand, sku, price, old_price, image, is_active, is_bestseller, is_featured, quantity, description, meta_keywords, meta_description, created_at, updated_at)
values ('26', 'Apple AirPods Pro (2nd Generation)', 'apple-airpods-pro-2nd-generation', 'Apple', '25678', '9.99', '9.99', 'images/products/main/screenshot_1678338247.png', '1', '0', '0', '9', 'Apple AirPods Pro (2nd Generation)', 'electronics', 'electronics', '2023-03-09 05:04:56.094418', '2023-03-09 05:04:56.094418');
insert into products (id, name, slug, brand, sku, price, old_price, image, is_active, is_bestseller, is_featured, quantity, description, meta_keywords, meta_description, created_at, updated_at)
values ('27', 'Lay\'s Snack', 'lays-snack', 'Lay\'s', '25679', '0.99', '0.99', 'images/products/main/1.jpeg', '1', '0', '0', '20', 'Lay\'s snack', 'food', 'food', '2023-03-09 05:08:23.704526', '2023-03-09 05:08:23.704526');
insert into products (id, name, slug, brand, sku, price, old_price, image, is_active, is_bestseller, is_featured, quantity, description, meta_keywords, meta_description, created_at, updated_at)
values ('28', 'Good Luck T-Shirt', 'good-luck-t-shirt', 'Good Luck', '25680', '5.99', '5.99', 'images/products/main/screenshot_1678338751.png', '1', '0', '0', '14', 'Good Luck T-Shirt', 'clothes', 'clothes', '2023-03-09 05:13:47.058714', '2023-03-09 05:13:47.058714');

insert into products_categories(id, product_id, category_id)
values('11', '12', '6');
insert into products_categories(id, product_id, category_id)
values('12', '13', '6');
insert into products_categories(id, product_id, category_id)
values('16', '18', '6');
insert into products_categories(id, product_id, category_id)
values('17', '19', '6');
insert into products_categories(id, product_id, category_id)
values('18', '20', '6');
insert into products_categories(id, product_id, category_id)
values('19', '21', '8');
insert into products_categories(id, product_id, category_id)
values('20', '22', '8');
insert into products_categories(id, product_id, category_id)
values('21', '23', '8');
insert into products_categories(id, product_id, category_id)
values('22', '24', '8');
insert into products_categories(id, product_id, category_id)
values('23', '25', '8');
insert into products_categories(id, product_id, category_id)
values('24', '26', '9');
insert into products_categories(id, product_id, category_id)
values('25', '27', '10');
insert into products_categories(id, product_id, category_id)
values('26', '28', '7');

insert into checkout_order (id, date, status, last_updated, transaction_id, email, phone, shipping_name, shipping_address_1, shipping_address_2, shipping_city, shipping_state, shipping_country, shipping_zip, billing_name, billing_address_1, billing_address_2, billing_city, billing_state, billing_country, billing_zip, user_id)
values('2', '2023-03-09 06:22:33.940237', '2', '2023-03-09 06:22:33.940237', '1', 'username@gmail.com', '0123456789', 'Ship', 'Address', 'Address', 'Address', '12', 'Vietnam', '12001', 'Billing', 'Address', 'Address', 'Address', '12', 'Vietnam', '100000', '5');

insert into checkout_orderitem(id, quantity, price, order_id, product_id)
values('2', '1', '9.99', '2', '26');

insert into accounts_userprofile(id, email, phone, shipping_name, shipping_address_1, shipping_address_2, shipping_city, shipping_state, shipping_country, shipping_zip, billing_name, billing_address_1, billing_address_2, billing_city, billing_state, billing_country, billing_zip, user_id)
values('1', 'username@gmail.com', '0123456789', 'Ship', 'Address', 'Address', 'Address', 'Ad', 'Address', '12001', 'Billing', 'Address', 'Address', 'Address', '13', 'Address', '12001', '5');