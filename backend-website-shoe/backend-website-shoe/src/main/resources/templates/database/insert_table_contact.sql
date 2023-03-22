DROP TABLE IF EXISTS tbl_contact;

CREATE TABLE tbl_contact (
                             id mediumint(8) unsigned NOT NULL auto_increment,
                             contact_id mediumint,
                             created_by mediumint default NULL,
                             created_date varchar(255),
                             updated_by mediumint default NULL,
                             updated_date varchar(255),
                             contact_message TEXT default NULL,
                             contact_name varchar(255) default NULL,
                             product_id mediumint default NULL,
                             contact_email varchar(255) default NULL,
                             PRIMARY KEY (id)
) AUTO_INCREMENT=1;

INSERT INTO tbl_contact (contact_id,created_by,created_date,updated_by,updated_date,contact_message,contact_name,product_id,contact_email)
VALUES
(1,4,'2024-01-16 08:28:37',4,'2022-03-25 00:02:32','non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac','Cedric Armstrong',28,'id.sapien@email.com'),
(2,2,'2023-04-10 12:21:53',1,'2022-03-28 03:30:11','Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla','Blake Mcclain',12,'est.nunc@email.com'),
(3,4,'2023-08-01 17:07:11',5,'2023-12-14 17:28:47','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.','Maris Barber',26,'eu.elit@email.com'),
(4,2,'2023-09-21 09:57:08',4,'2024-02-08 09:45:28','Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean','Jordan Merrill',29,'pretium@gmail.com'),
(5,4,'2022-11-06 02:44:08',9,'2024-01-12 03:41:26','sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum','Dominic Bullock',7,'urna.ut@email.com'),
(6,7,'2024-02-05 19:54:02',2,'2023-12-24 18:06:35','urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet,','Karleigh Kerr',29,'eleifend.nec@email.com'),
(7,8,'2022-04-24 02:19:30',6,'2024-02-13 10:57:22','Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus','Nita Boyle',27,'ridiculus.mus.aenean@email.com'),
(8,6,'2022-07-03 18:58:23',6,'2023-07-20 00:07:39','ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa','Jerome Wolfe',10,'massa@gmail.com'),
(9,2,'2022-05-29 10:05:12',9,'2022-06-10 02:21:35','Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi','Adria Melton',22,'dolor.sit@email.com'),
(10,7,'2024-03-12 15:20:57',8,'2022-12-21 21:16:54','feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor,','Tad Jenkins',15,'nulla.vulputate@gmail.com'),
(11,10,'2022-03-27 02:15:54',9,'2024-03-04 13:16:10','aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra.','MacKensie Vega',13,'lacus@email.com'),
(12,5,'2023-12-03 03:22:52',8,'2022-08-10 09:31:03','Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla.','Malcolm Jimenez',24,'dictum@gmail.com'),
(13,1,'2023-02-27 17:42:54',2,'2023-11-23 19:28:39','Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit.','Neil Delaney',17,'eu.augue@gmail.com'),
(14,7,'2022-11-03 03:52:50',7,'2022-04-15 13:46:01','sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh.','Sylvia Blackwell',15,'eu@email.com'),
(15,5,'2024-03-16 05:45:26',4,'2023-01-17 19:33:28','porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed','Kamal Fitzpatrick',19,'vitae@gmail.com'),
(16,2,'2024-02-07 04:23:42',3,'2022-10-30 09:57:19','Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut','August Meyer',14,'ac.risus@gmail.com'),
(17,4,'2022-11-03 12:27:49',3,'2023-01-14 19:02:24','sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin','Kuame Chaney',12,'vulputate.dui@gmail.com'),
(18,9,'2024-01-02 18:05:16',8,'2022-10-03 10:34:44','gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed','Dahlia Mayer',8,'luctus.ipsum@email.com'),
(19,8,'2023-09-01 14:40:20',5,'2023-05-24 12:44:33','bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui','Kitra Salinas',4,'ut@gmail.com'),
(20,2,'2022-10-11 05:15:13',2,'2023-08-27 10:25:55','varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla','Clio Haney',12,'phasellus.nulla.integer@gmail.com'),
(21,9,'2024-01-27 03:11:36',9,'2023-01-16 01:13:22','Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula','Alec Landry',13,'amet.dapibus.id@gmail.com'),
(22,1,'2022-06-10 22:22:53',4,'2023-09-25 18:26:55','massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum','Ashely Bond',16,'vestibulum.nec@email.com'),
(23,3,'2022-03-22 22:52:32',4,'2022-08-17 22:50:17','tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl','Quinlan Rush',14,'risus@email.com'),
(24,10,'2023-10-13 19:52:08',6,'2023-06-06 08:15:40','pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in,','Abigail Bates',18,'nec@gmail.com'),
(25,1,'2024-02-10 13:23:52',7,'2022-10-26 05:05:22','est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices','Kasimir Rowe',27,'ut@email.com'),
(26,7,'2023-10-23 00:16:38',7,'2023-04-21 16:49:06','pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu','Colton Wall',28,'luctus.curabitur@email.com'),
(27,10,'2023-04-01 01:54:43',6,'2024-02-29 04:30:48','at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam','Calista Mcdonald',26,'erat@gmail.com'),
(28,7,'2022-12-14 08:22:05',7,'2022-12-11 11:36:21','nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec','Jackson Richmond',28,'mi.eleifend.egestas@email.com'),
(29,1,'2022-09-16 12:06:03',3,'2022-11-12 17:07:33','Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent','Willa Browning',28,'ut.odio.vel@gmail.com'),
(30,7,'2022-03-27 15:04:20',1,'2022-06-23 18:28:49','quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis','Brynne Miles',15,'mauris@gmail.com');
