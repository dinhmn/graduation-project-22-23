DROP TABLE IF EXISTS tbl_user_information;

CREATE TABLE tbl_user_information (
                                      id mediumint(8) unsigned NOT NULL auto_increment,
                                      user_information_id mediumint,
                                      created_by mediumint default NULL,
                                      created_date varchar(255),
                                      updated_by mediumint default NULL,
                                      updated_date varchar(255),
                                      source_image_id mediumint default NULL,
                                      address varchar(255) default NULL,
                                      age mediumint default NULL,
                                      email varchar(255) default NULL,
                                      first_name varchar(255) default NULL,
                                      last_name varchar(255) default NULL,
                                      phone varchar(100) default NULL,
                                      user_code mediumint default NULL,
                                      user_id mediumint default NULL,
                                      PRIMARY KEY (id)
) AUTO_INCREMENT=1;

INSERT INTO tbl_user_information (user_information_id,created_by,created_date,updated_by,updated_date,source_image_id,address,age,email,first_name,last_name,phone,user_code,user_id)
VALUES
(1,2,'2023-08-01 07:44:59',5,'2023-09-23 05:13:27',4,'Ap #135-3824 A St.',24,'at.velit@gmail.com','Bree','Skyler','0686877735',11,10),
(2,5,'2023-05-31 19:24:30',10,'2022-08-08 09:11:39',20,'158-5308 Nunc Avenue',23,'facilisis.eget@gmail.com','Aiko','Idona','0945777331',10,12),
(3,2,'2023-12-04 06:00:27',9,'2023-07-02 16:46:47',18,'P.O. Box 403, 2558 Turpis St.',28,'ipsum@gmail.com','Bo','Marny','0468954892',10,4),
(4,10,'2022-06-18 07:19:21',2,'2022-06-18 11:53:16',10,'438-3668 Vel Av.',28,'lobortis@gmail.com','Stella','Madison','0385860151',11,13),
(5,9,'2023-06-04 21:59:10',4,'2022-11-02 20:16:46',2,'927-1219 Velit Avenue',20,'et@gmail.com','Brendan','Robin','0722775410',10,3),
(6,5,'2022-08-18 23:00:10',7,'2023-07-08 00:19:47',12,'Ap #122-8977 Arcu Street',18,'et@gmail.com','Hedda','Frances','0316675062',11,12),
(7,6,'2024-01-13 03:48:12',4,'2023-10-17 19:45:38',10,'947-1243 Neque Rd.',25,'quis.pede@gmail.com','Anthony','Priscilla','0675546582',11,5),
(8,7,'2023-07-13 12:37:03',6,'2022-05-03 23:52:17',7,'Ap #300-807 Phasellus St.',23,'sed.tortor.integer@gmail.com','Amir','Cora','0740866063',11,12),
(9,3,'2022-08-25 15:07:37',6,'2022-04-02 03:22:55',27,'392-5179 Non Street',19,'eu.odio.tristique@gmail.com','Eaton','Galena','0524864085',10,9),
(10,8,'2023-09-16 22:58:19',4,'2023-06-27 16:30:24',21,'Ap #677-3106 Ac St.',24,'feugiat.lorem@gmail.com','Rinah','Montana','0325671261',11,8),
(11,2,'2023-03-04 12:04:44',2,'2023-02-13 20:30:48',26,'Ap #720-9639 Libero. Rd.',18,'risus@gmail.com','Winter','Serina','0202317088',11,2),
(12,2,'2022-08-30 01:43:37',8,'2023-11-26 22:24:00',24,'984-8094 Imperdiet Av.',19,'et@gmail.com','Ulric','Jada','0276943862',10,6),
(13,6,'2023-02-11 00:44:31',4,'2022-06-21 17:30:08',3,'9831 Vitae Rd.',20,'proin.velit@gmail.com','Lee','Uta','0969748758',10,8),
(14,10,'2024-02-11 08:29:40',9,'2022-04-22 05:34:49',21,'Ap #194-6034 Faucibus. Street',25,'faucibus.ut@gmail.com','Gavin','Jacqueline','0678424789',10,7),
(15,1,'2023-02-05 15:13:53',10,'2023-04-03 05:36:18',15,'Ap #361-4190 At, St.',19,'mattis.velit.justo@gmail.com','Fritz','Beatrice','0807655356',10,4),
(16,7,'2023-06-10 13:55:15',6,'2022-07-14 16:23:49',21,'Ap #772-877 Lobortis Av.',28,'aliquet.vel.vulputate@gmail.com','Samantha','Allegra','0353261155',11,5),
(17,8,'2022-11-04 20:50:04',2,'2023-04-28 05:30:46',11,'Ap #180-3600 Arcu St.',24,'cursus@gmail.com','Mannix','McKenzie','0222187331',10,13),
(18,7,'2022-05-17 12:28:42',1,'2023-04-18 07:27:31',13,'674-767 Vestibulum Ave',28,'donec@gmail.com','Quintessa','Shellie','0389610922',10,9),
(19,9,'2023-08-16 13:43:55',3,'2023-12-08 07:38:58',4,'Ap #951-833 Tellus. Road',29,'arcu.imperdiet@gmail.com','Britanney','Isabella','0274692482',10,9),
(20,4,'2023-09-08 23:27:37',1,'2022-05-30 17:58:32',21,'P.O. Box 323, 8135 Rutrum Rd.',29,'eu.odio@gmail.com','Beatrice','Uta','0742859507',11,3),
(21,4,'2023-04-18 07:01:21',9,'2023-07-28 23:56:07',14,'Ap #566-4842 Nonummy Ave',26,'tempor.erat@gmail.com','Kenneth','Reagan','0567539241',11,7),
(22,6,'2023-09-25 05:35:30',10,'2023-07-24 02:28:58',28,'465-4191 Amet Avenue',25,'lacus.aliquam@gmail.com','Xantha','Echo','0136239362',11,4),
(23,7,'2023-10-29 01:07:50',5,'2022-09-05 02:35:24',22,'Ap #258-3779 Sed Rd.',21,'aliquet@gmail.com','Ivory','Mia','0583730576',10,5),
(24,4,'2023-09-11 13:21:46',9,'2022-06-06 06:40:43',5,'Ap #714-9255 Ac Rd.',30,'sociosqu.ad.litora@gmail.com','MacKenzie','Venus','0796243645',11,9),
(25,6,'2023-05-03 03:33:18',8,'2023-04-01 12:18:38',28,'P.O. Box 564, 7143 Libero. St.',20,'quisque@gmail.com','Drake','Ingrid','0238353213',10,3),
(26,2,'2023-12-28 05:26:56',4,'2022-05-01 17:18:31',20,'795-3443 Dui, Street',28,'nunc.commodo.auctor@gmail.com','Keane','Ava','0564143372',10,10),
(27,3,'2022-10-08 14:10:31',3,'2023-09-30 07:09:34',26,'214-5286 Mattis. Rd.',24,'augue.ac@gmail.com','Veronica','Daryl','0445464587',10,7),
(28,4,'2022-07-06 16:50:47',7,'2023-04-09 20:57:24',6,'753-6372 Aliquet Av.',26,'cras@gmail.com','Courtney','Cailin','0737682037',11,12),
(29,2,'2022-05-26 14:55:02',4,'2022-08-14 20:47:51',23,'826-4762 Orci, Street',23,'vestibulum.mauris.magna@gmail.com','Samuel','Sheila','0632490771',11,12),
(30,7,'2023-06-16 19:49:01',10,'2024-03-13 21:09:21',14,'141-7924 Sed St.',26,'at.risus.nunc@gmail.com','Nadine','Hillary','0971847693',11,13);
