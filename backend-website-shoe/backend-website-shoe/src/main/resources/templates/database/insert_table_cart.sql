DROP TABLE IF EXISTS tbl_cart;

CREATE TABLE tbl_cart (
                          id mediumint(8) unsigned NOT NULL auto_increment,
                          cart_id mediumint,
                          created_by mediumint default NULL,
                          created_date varchar(255),
                          updated_by mediumint default NULL,
                          updated_date varchar(255),
                          product_current_price mediumint default NULL,
                          product_name TEXT default NULL,
                          product_quantity mediumint default NULL,
                          product_id mediumint default NULL,
                          PRIMARY KEY (id)
) AUTO_INCREMENT=1;

INSERT INTO tbl_cart (cart_id,created_by,created_date,updated_by,updated_date,product_current_price,product_name,product_quantity,product_id)
VALUES
(1,7,'2024-03-13 09:43:55',4,'2022-08-15 18:14:35',5382457,'tellus. Phasellus elit pede,',8,17),
(2,9,'2023-03-19 20:05:39',3,'2022-11-09 12:46:51',1795087,'sed libero. Proin sed',10,14),
(3,6,'2022-05-06 23:50:50',2,'2022-03-26 21:06:07',5540198,'Vestibulum ante ipsum primis',13,22),
(4,8,'2022-09-13 18:38:07',5,'2022-10-23 17:55:05',8284798,'et pede. Nunc sed',14,12),
(5,3,'2022-10-28 14:15:10',6,'2023-12-08 08:25:46',8385662,'Fusce feugiat. Lorem ipsum',13,21),
(6,5,'2023-02-21 11:14:50',4,'2022-12-28 09:32:59',8936607,'purus. Maecenas libero est,',12,16),
(7,8,'2023-02-09 14:29:33',8,'2023-07-23 06:48:17',4709338,'massa. Suspendisse eleifend. Cras',13,20),
(8,6,'2022-09-26 23:14:38',1,'2023-12-06 04:49:51',9506914,'fermentum fermentum arcu. Vestibulum',11,12),
(9,9,'2023-01-13 01:58:15',4,'2023-04-05 09:43:25',8889239,'ipsum cursus vestibulum. Mauris',5,28),
(10,7,'2023-03-24 15:16:18',6,'2024-02-26 12:10:24',1369001,'mi. Aliquam gravida mauris',12,4),
(11,9,'2022-11-17 00:25:08',2,'2022-07-25 05:39:09',3167066,'risus. Morbi metus. Vivamus',7,22),
(12,2,'2022-08-25 22:44:35',4,'2022-10-18 13:03:16',4743735,'nunc interdum feugiat. Sed',6,12),
(13,9,'2023-07-10 16:18:39',9,'2023-05-20 15:22:33',4790566,'Etiam gravida molestie arcu.',7,25),
(14,9,'2022-06-15 02:46:05',8,'2023-06-11 04:26:39',6228411,'nec tempus scelerisque, lorem',5,4),
(15,2,'2023-05-28 22:19:23',5,'2024-03-08 21:30:58',3354529,'auctor, nunc nulla vulputate',8,8),
(16,2,'2022-08-15 04:25:23',1,'2023-11-03 03:43:14',5472068,'arcu et pede. Nunc',15,22),
(17,8,'2022-06-19 13:01:25',10,'2022-09-22 14:57:04',7800695,'Sed et libero. Proin',14,5),
(18,2,'2023-10-24 16:34:44',2,'2023-11-24 22:33:16',9884229,'Curabitur dictum. Phasellus in',5,1),
(19,4,'2023-04-20 09:13:39',6,'2022-05-25 22:15:50',3207887,'felis orci, adipiscing non,',13,15),
(20,9,'2023-02-18 15:33:39',4,'2023-06-21 14:33:20',2487203,'sem mollis dui, in',7,17),
(21,5,'2023-02-10 12:59:55',9,'2022-12-08 02:12:05',3582791,'non leo. Vivamus nibh',2,23),
(22,9,'2023-08-06 14:44:28',2,'2023-06-10 07:42:54',9662531,'eget metus. In nec',11,29),
(23,1,'2023-04-15 00:05:23',4,'2023-02-07 08:20:06',3872670,'accumsan sed, facilisis vitae,',8,20),
(24,4,'2023-09-07 13:29:56',2,'2022-07-06 14:25:05',4073063,'vehicula risus. Nulla eget',14,10),
(25,9,'2023-05-21 06:58:54',7,'2023-08-15 15:52:02',7425862,'in, dolor. Fusce feugiat.',2,4),
(26,2,'2023-07-23 11:34:24',5,'2022-10-23 12:29:56',6800066,'risus. In mi pede,',8,29),
(27,3,'2022-09-15 08:50:26',8,'2023-07-20 13:11:14',3416047,'sagittis augue, eu tempor',12,11),
(28,9,'2023-11-17 09:12:17',1,'2024-01-18 22:58:55',7534392,'non quam. Pellentesque habitant',12,28),
(29,7,'2023-02-16 23:25:17',4,'2024-03-17 00:12:30',2358508,'et ultrices posuere cubilia',10,26),
(30,6,'2023-03-23 09:36:15',6,'2023-07-11 19:49:44',3118255,'nec, eleifend non, dapibus',3,5);
