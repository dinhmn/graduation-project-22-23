create table tbl_rates (
                           rate_id INT,
                           created_by INT,
                           created_date DATE,
                           status VARCHAR(50),
                           updated_by INT,
                           updated_date DATE,
                           comment_id INT,
                           article_id INT,
                           product_id INT,
                           star_rating DECIMAL(2,1)
);
insert into tbl_rates (rate_id, created_by, created_date, status, updated_by, updated_date, comment_id, article_id, product_id, star_rating) values (1, 11, '2022-11-29 16:50:59', false, 42, '2022-09-07 07:58:28', 2, 10, 9, 4.7);
insert into tbl_rates (rate_id, created_by, created_date, status, updated_by, updated_date, comment_id, article_id, product_id, star_rating) values (2, 98, '2022-10-30 21:34:40', true, 95, '2022-09-18 05:56:33', 14, 20, 21, 3.5);
insert into tbl_rates (rate_id, created_by, created_date, status, updated_by, updated_date, comment_id, article_id, product_id, star_rating) values (3, 100, '2022-12-29 11:41:12', false, 100, '2022-09-27 06:39:00', 25, 18, 26, 3.3);
insert into tbl_rates (rate_id, created_by, created_date, status, updated_by, updated_date, comment_id, article_id, product_id, star_rating) values (4, 75, '2022-05-10 09:39:46', true, 27, '2022-12-04 13:14:04', 25, 19, 1, 4.4);
insert into tbl_rates (rate_id, created_by, created_date, status, updated_by, updated_date, comment_id, article_id, product_id, star_rating) values (5, 22, '2023-01-17 04:36:35', true, 90, '2022-05-08 09:09:22', 20, 8, 19, 4.5);
insert into tbl_rates (rate_id, created_by, created_date, status, updated_by, updated_date, comment_id, article_id, product_id, star_rating) values (6, 67, '2022-10-16 13:14:50', false, 32, '2022-06-03 10:26:46', 18, 23, 8, 4.8);
insert into tbl_rates (rate_id, created_by, created_date, status, updated_by, updated_date, comment_id, article_id, product_id, star_rating) values (7, 10, '2022-12-20 03:22:33', false, 57, '2022-12-30 14:51:07', 19, 21, 20, 5.0);
insert into tbl_rates (rate_id, created_by, created_date, status, updated_by, updated_date, comment_id, article_id, product_id, star_rating) values (8, 71, '2022-08-19 21:30:47', false, 40, '2022-12-13 10:05:29', 19, 9, 25, 4.3);
insert into tbl_rates (rate_id, created_by, created_date, status, updated_by, updated_date, comment_id, article_id, product_id, star_rating) values (9, 80, '2022-06-06 17:32:48', false, 73, '2022-05-22 21:44:43', 24, 11, 12, 4.4);
insert into tbl_rates (rate_id, created_by, created_date, status, updated_by, updated_date, comment_id, article_id, product_id, star_rating) values (10, 13, '2022-05-07 18:11:27', false, 46, '2023-03-07 11:35:27', 14, 13, 28, 4.4);
insert into tbl_rates (rate_id, created_by, created_date, status, updated_by, updated_date, comment_id, article_id, product_id, star_rating) values (11, 5, '2022-11-23 01:23:43', true, 12, '2022-04-29 19:21:24', 2, 14, 9, 5.0);
insert into tbl_rates (rate_id, created_by, created_date, status, updated_by, updated_date, comment_id, article_id, product_id, star_rating) values (12, 6, '2022-12-23 17:17:54', false, 69, '2022-05-20 09:01:55', 24, 20, 6, 3.5);
insert into tbl_rates (rate_id, created_by, created_date, status, updated_by, updated_date, comment_id, article_id, product_id, star_rating) values (13, 55, '2022-07-22 04:53:16', true, 90, '2022-10-21 21:31:19', 18, 21, 3, 4.3);
insert into tbl_rates (rate_id, created_by, created_date, status, updated_by, updated_date, comment_id, article_id, product_id, star_rating) values (14, 93, '2022-10-26 18:24:26', true, 12, '2023-01-01 14:57:13', 5, 13, 1, 4.4);
insert into tbl_rates (rate_id, created_by, created_date, status, updated_by, updated_date, comment_id, article_id, product_id, star_rating) values (15, 96, '2022-04-19 13:09:35', false, 93, '2022-10-01 09:02:43', 6, 4, 20, 4.4);
insert into tbl_rates (rate_id, created_by, created_date, status, updated_by, updated_date, comment_id, article_id, product_id, star_rating) values (16, 29, '2022-09-05 03:42:38', true, 26, '2023-03-03 02:29:09', 24, 25, 3, 4.8);
insert into tbl_rates (rate_id, created_by, created_date, status, updated_by, updated_date, comment_id, article_id, product_id, star_rating) values (17, 73, '2022-12-16 17:01:05', false, 67, '2023-01-18 05:48:49', 20, 24, 23, 4.6);
insert into tbl_rates (rate_id, created_by, created_date, status, updated_by, updated_date, comment_id, article_id, product_id, star_rating) values (18, 45, '2022-07-17 21:01:11', false, 68, '2022-11-08 16:30:18', 12, 6, 18, 3.3);
insert into tbl_rates (rate_id, created_by, created_date, status, updated_by, updated_date, comment_id, article_id, product_id, star_rating) values (19, 7, '2022-05-02 02:09:07', true, 37, '2022-04-12 15:15:17', 23, 1, 21, 4.0);
insert into tbl_rates (rate_id, created_by, created_date, status, updated_by, updated_date, comment_id, article_id, product_id, star_rating) values (20, 94, '2022-09-04 07:06:38', false, 72, '2022-10-21 16:27:56', 20, 27, 20, 3.1);
insert into tbl_rates (rate_id, created_by, created_date, status, updated_by, updated_date, comment_id, article_id, product_id, star_rating) values (21, 33, '2022-11-22 04:22:33', false, 45, '2023-02-01 19:15:08', 26, 12, 16, 4.7);
insert into tbl_rates (rate_id, created_by, created_date, status, updated_by, updated_date, comment_id, article_id, product_id, star_rating) values (22, 14, '2023-02-04 16:55:06', false, 24, '2022-10-05 07:12:57', 9, 10, 21, 3.8);
insert into tbl_rates (rate_id, created_by, created_date, status, updated_by, updated_date, comment_id, article_id, product_id, star_rating) values (23, 23, '2022-09-07 09:27:29', false, 51, '2022-11-21 04:27:35', 26, 4, 25, 4.1);
insert into tbl_rates (rate_id, created_by, created_date, status, updated_by, updated_date, comment_id, article_id, product_id, star_rating) values (24, 2, '2023-03-15 22:41:36', false, 87, '2022-05-06 15:08:54', 11, 1, 1, 3.4);
insert into tbl_rates (rate_id, created_by, created_date, status, updated_by, updated_date, comment_id, article_id, product_id, star_rating) values (25, 68, '2022-07-23 09:30:59', false, 13, '2022-11-06 21:14:10', 28, 1, 9, 3.8);
insert into tbl_rates (rate_id, created_by, created_date, status, updated_by, updated_date, comment_id, article_id, product_id, star_rating) values (26, 11, '2022-10-10 08:18:01', false, 68, '2022-10-27 15:31:37', 6, 2, 28, 3.3);
insert into tbl_rates (rate_id, created_by, created_date, status, updated_by, updated_date, comment_id, article_id, product_id, star_rating) values (27, 52, '2022-04-03 14:45:20', true, 34, '2022-09-28 19:52:50', 2, 27, 20, 4.9);
insert into tbl_rates (rate_id, created_by, created_date, status, updated_by, updated_date, comment_id, article_id, product_id, star_rating) values (28, 88, '2023-03-13 05:59:42', false, 70, '2023-03-06 07:51:31', 25, 13, 21, 3.3);
insert into tbl_rates (rate_id, created_by, created_date, status, updated_by, updated_date, comment_id, article_id, product_id, star_rating) values (29, 26, '2022-12-26 07:52:47', false, 80, '2022-09-22 01:35:08', 30, 29, 10, 4.9);
insert into tbl_rates (rate_id, created_by, created_date, status, updated_by, updated_date, comment_id, article_id, product_id, star_rating) values (30, 57, '2022-03-24 02:28:20', false, 30, '2022-07-14 05:54:06', 13, 18, 11, 4.1);