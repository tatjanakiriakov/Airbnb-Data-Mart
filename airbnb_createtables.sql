DROP DATABASE IF EXISTS airbnb_datamart;
CREATE DATABASE airbnb_datamart; 
USE airbnb_datamart;
SET NAMES utf8 ;
SET character_set_client = utf8mb4 ;

CREATE TABLE host (
host_id INT(10) NOT NULL AUTO_INCREMENT,
firstname VARCHAR(200) NOT NULL, 
lastname VARCHAR(200) NOT NULL, 
PRIMARY KEY (host_id)
); 
INSERT INTO host VALUES (1,'Marc','Müller');
INSERT INTO host VALUES (2,'Anna','Neitzel');
INSERT INTO host VALUES (3,'Joseph','Smith');
INSERT INTO host VALUES (4,'Adriana','Roul');
INSERT INTO host VALUES (5,'Carolina','Karil');
INSERT INTO host VALUES (6,'Konstantin','Seidel');
INSERT INTO host VALUES (7,'Olga','Tosun');
INSERT INTO host VALUES (8,'Julia','Kirchmeier');
INSERT INTO host VALUES (9,'Jamie','Smith');
INSERT INTO host VALUES (10,'Karen','Terry');
INSERT INTO host VALUES (11,'Billy','Fitzgerald');
INSERT INTO host VALUES (12,'Alexandra','Lang');
INSERT INTO host VALUES (13,'Jennifer','Anderson');
INSERT INTO host VALUES (14,'Karen','Kemp');
INSERT INTO host VALUES (15,'Jordan','Barber');
INSERT INTO host VALUES (16,'Carrie','King');
INSERT INTO host VALUES (17,'James','Russell');
INSERT INTO host VALUES (18,'Bridget','Simmons');
INSERT INTO host VALUES (19,'Emily','Brooks');
INSERT INTO host VALUES (20,'Steven','Wade');



CREATE TABLE host_login(
host_login_id INT(10) NOT NULL AUTO_INCREMENT,
host_id INT(10) NOT NULL,
username CHAR(100) NOT NULL, 
password CHAR(50) NOT NULL, 
PRIMARY KEY (host_login_id),
FOREIGN KEY (host_id) REFERENCES host(host_id) ON UPDATE CASCADE
);
INSERT INTO host_login VALUES (1,1,'marccml','kfgksss45');
INSERT INTO host_login VALUES (2,2,'annanei','5fdgdfg');
INSERT INTO host_login VALUES (3,3,'josephhh','hgfgdsg');
INSERT INTO host_login VALUES (4,4,'adrianatzs','fdsgds');
INSERT INTO host_login VALUES (5,5,'carosk','teaadhh');
INSERT INTO host_login VALUES (6,6,'konstantinkii','zhhsgdfsd');
INSERT INTO host_login VALUES (7,7,'olganst','hfghdfsdfd');
INSERT INTO host_login VALUES (8,8,'juliakrch','gjgfgsdgdf');
INSERT INTO host_login VALUES (9,9,'jamieovd','ghjhgffd');
INSERT INTO host_login VALUES (10,10,'karennn','hfghfdgfd');
INSERT INTO host_login VALUES (11,11,'billyakfn','fdgfdgd');
INSERT INTO host_login VALUES (12,12,'alextzandra','dfghgdgd');
INSERT INTO host_login VALUES (13,13,'jennyneuham','dfgfdgd');
INSERT INTO host_login VALUES (14,14,'karennnals','hhnccxv');
INSERT INTO host_login VALUES (15,15,'jordancnd','hfdgmgfgdf');
INSERT INTO host_login VALUES (16,16,'carriezup','jksffhfgfd');
INSERT INTO host_login VALUES (17,17,'jamesxla','gnvcbvcvdfg');
INSERT INTO host_login VALUES (18,18,'bridgettime','tzrtdvbdge');
INSERT INTO host_login VALUES (19,19,'emilybroooks','rtewrsdffdg');
INSERT INTO host_login VALUES (20,20,'stevvenwadee','khgdfbdfer');


CREATE TABLE host_contact_details (
host_contact_id INT(10) NOT NULL AUTO_INCREMENT,
host_id INT(10) NOT NULL,
email CHAR(200) DEFAULT 'host didn´t leave an e-mail', 
telephone CHAR(100) NOT NULL, 
socialmedia TEXT,
PRIMARY KEY (host_contact_id),
FOREIGN KEY (host_id) REFERENCES host(host_id) ON UPDATE CASCADE
); 
INSERT INTO host_contact_details VALUES (1, 20,  'steven.wade@gmail.com', '013-324-543-234', '@marc.müller'); 
INSERT INTO host_contact_details VALUES (2, 19,  'emily.brooks@gmail.com', '013-324-543-234', '@marc.müller'); 
INSERT INTO host_contact_details VALUES (3, 18,  'bridget.simmons@gmail.com', '013-324-543-234', '@marc.müller'); 
INSERT INTO host_contact_details VALUES (4, 17,  'james.russell@gmail.com', '013-324-543-234', '@marc.müller'); 
INSERT INTO host_contact_details VALUES (5, 16,  'carrie.king@gmail.com', '013-324-543-234', '@marc.müller'); 
INSERT INTO host_contact_details VALUES (6, 15,  'jordan.barber@gmail.com', '013-324-543-234', '@marc.müller'); 
INSERT INTO host_contact_details VALUES (7, 14,  'karen.kemp@gmail.com', '013-324-543-234', '@marc.müller'); 
INSERT INTO host_contact_details VALUES (8, 13,  'jennifer.anderson@gmail.com', '013-324-543-234', '@marc.müller'); 
INSERT INTO host_contact_details VALUES (9, 12,  'alexandra.lang@gmail.com', '013-324-543-234', '@marc.müller'); 
INSERT INTO host_contact_details VALUES (10, 11,  'billy.fitzgerald@gmail.com', '013-324-543-234', '@marc.müller'); 
INSERT INTO host_contact_details VALUES (11, 10,  'karen.terry@gmail.com', '013-324-543-234', '@marc.müller'); 
INSERT INTO host_contact_details VALUES (12, 9,  'jamie.smith@gmail.com', '013-324-543-234', '@marc.müller'); 
INSERT INTO host_contact_details VALUES (13, 8,  'julia.krchmr@gmail.com', '013-324-543-234', '@marc.müller'); 
INSERT INTO host_contact_details VALUES (14, 7,  'olga.tosun@gmail.com', '013-324-543-234', '@marc.müller'); 
INSERT INTO host_contact_details VALUES (15, 6,  'konstantin.seidel@gmail.com', '013-324-543-234', '@marc.müller'); 
INSERT INTO host_contact_details VALUES (16, 5,  'carolina.karil@gmail.com', '013-324-543-234', '@marc.müller'); 
INSERT INTO host_contact_details VALUES (17, 4,  'adriana.roul@gmail.com', '013-324-543-234', '@marc.müller'); 
INSERT INTO host_contact_details VALUES (18, 3,  'joseph.smith@gmail.com', '013-324-543-234', '@marc.müller'); 
INSERT INTO host_contact_details VALUES (19, 2,  'anna.neitzel@gmail.com', '013-324-543-234', '@marc.müller'); 
INSERT INTO host_contact_details VALUES (20, 1,  'marc.müller@gmail.com', '013-324-543-234', '@marc.müller'); 


CREATE TABLE host_reply(
reply_id INT(10) NOT NULL AUTO_INCREMENT, 
host_id INT(10) NOT NULL, 
percentage INT(3) NOT NULL, 
PRIMARY KEY (reply_id),
FOREIGN KEY (host_id) REFERENCES host(host_id) ON UPDATE CASCADE
); 
INSERT INTO host_reply VALUES (1, 1, '50'); 
INSERT INTO host_reply VALUES (2, 2, '30'); 
INSERT INTO host_reply VALUES (3, 3, '100'); 
INSERT INTO host_reply VALUES (4, 4, '50'); 
INSERT INTO host_reply VALUES (5, 5, '60'); 
INSERT INTO host_reply VALUES (6, 6, '80'); 
INSERT INTO host_reply VALUES (7, 7, '80'); 
INSERT INTO host_reply VALUES (8, 8, '90'); 
INSERT INTO host_reply VALUES (9, 9, '100'); 
INSERT INTO host_reply VALUES (10, 10, '20'); 
INSERT INTO host_reply VALUES (11, 11, '10'); 
INSERT INTO host_reply VALUES (12, 12, '0'); 
INSERT INTO host_reply VALUES (13, 13, '50'); 
INSERT INTO host_reply VALUES (14, 14, '60'); 
INSERT INTO host_reply VALUES (15, 15, '70'); 
INSERT INTO host_reply VALUES (16, 16, '80'); 
INSERT INTO host_reply VALUES (17, 17, '50'); 
INSERT INTO host_reply VALUES (18, 18, '40'); 
INSERT INTO host_reply VALUES (19, 19, '30'); 
INSERT INTO host_reply VALUES (20, 20, '100'); 


CREATE TABLE host_info (
host_info_id INT(10) NOT NULL AUTO_INCREMENT, 
host_id INT(10) NOT NULL, 
age INT(10) NOT NULL, 
superhost BOOLEAN NOT NULL, 
PRIMARY KEY (host_info_id), 
FOREIGN KEY (host_id) REFERENCES host(host_id) ON UPDATE CASCADE
); 
INSERT INTO host_info VALUES (1, 2, '26', '1'); 
INSERT INTO host_info VALUES (2, 4, '40', '0'); 
INSERT INTO host_info VALUES (3, 6, '35', '0'); 
INSERT INTO host_info VALUES (4, 8, '23', '0'); 
INSERT INTO host_info VALUES (5, 10, '60', '1'); 
INSERT INTO host_info VALUES (6, 12, '55', '0'); 
INSERT INTO host_info VALUES (7, 14, '30', '0'); 
INSERT INTO host_info VALUES (8, 16, '35', '0'); 
INSERT INTO host_info VALUES (9, 18, '31', '1'); 
INSERT INTO host_info VALUES (10, 20, '29', '1'); 
INSERT INTO host_info VALUES (11, 1, '30', '1'); 
INSERT INTO host_info VALUES (12, 3, '44', '0'); 
INSERT INTO host_info VALUES (13, 5, '42', '0'); 
INSERT INTO host_info VALUES (14, 7, '29', '0'); 
INSERT INTO host_info VALUES (15, 9, '54', '0'); 
INSERT INTO host_info VALUES (16, 11, '48', '0'); 
INSERT INTO host_info VALUES (17, 13, '64', '1'); 
INSERT INTO host_info VALUES (18, 15, '48', '0'); 
INSERT INTO host_info VALUES (19, 17, '25', '0'); 
INSERT INTO host_info VALUES (20, 19, '26', '0'); 

CREATE TABLE host_rating (
host_rating_id INT(10) NOT NULL AUTO_INCREMENT, 
host_id INT(10) NOT NULL, 
count INT(30) NOT NULL, 
host_ratings TEXT, 
PRIMARY KEY (host_rating_id), 
FOREIGN KEY (host_id) REFERENCES host(host_id) ON UPDATE CASCADE
); 
INSERT INTO host_rating VALUES (1, 20, '200', 'This host was great and very welcoming!'); 
INSERT INTO host_rating VALUES (2, 19, '14', 'I was expecting a nicer host');  
INSERT INTO host_rating VALUES (3, 18, '10', 'The host was amazing'); 
INSERT INTO host_rating VALUES (4, 17, '76', 'Very professional host'); 
INSERT INTO host_rating VALUES (5, 16, '40', 'I loved it!'); 
INSERT INTO host_rating VALUES (6, 15, '57', 'This host was great and very welcoming!'); 
INSERT INTO host_rating VALUES (7, 14, '84', 'Could be better'); 
INSERT INTO host_rating VALUES (8, 13, '3', 'The host even showed us the neighborhood'); 
INSERT INTO host_rating VALUES (9, 12, '23', 'host helped us with everything'); 
INSERT INTO host_rating VALUES (10, 11, '2', 'really nice person'); 
INSERT INTO host_rating VALUES (11, 10, '34', 'very professional host'); 
INSERT INTO host_rating VALUES (12, 9, '18', 'very experienced host'); 
INSERT INTO host_rating VALUES (13, 8, '8', 'we had a lot of fun because the host allowed us lots of things'); 
INSERT INTO host_rating VALUES (14, 7, '39', 'I wish the host would take care of us more'); 
INSERT INTO host_rating VALUES (15, 6, '20', 'This host was great and very welcoming!'); 
INSERT INTO host_rating VALUES (16, 5, '44', 'It was wonderful!'); 
INSERT INTO host_rating VALUES (17, 4, '24', 'Everything was great!'); 
INSERT INTO host_rating VALUES (18, 3, '0', 'The host could be better prepared'); 
INSERT INTO host_rating VALUES (19, 2, '8', 'I really liked the host'); 
INSERT INTO host_rating VALUES (20, 1, '2', 'The host wasn´t too welcoming but the apartment was tidy'); 


CREATE TABLE guest(
guest_id INT(10) NOT NULL AUTO_INCREMENT, 
firstname VARCHAR(200) NOT NULL, 
lastname VARCHAR(200) NOT NULL, 
PRIMARY KEY (guest_id)
); 
INSERT INTO guest VALUES (1, 'Millie', 'Johns'); 
INSERT INTO guest VALUES (2, 'Amir', 'Wills'); 
INSERT INTO guest VALUES (3, 'Norbert', 'Effez'); 
INSERT INTO guest VALUES (4, 'Lafayette', 'Marvin'); 
INSERT INTO guest VALUES (5, 'Hailey', 'Gibson'); 
INSERT INTO guest VALUES (6, 'Valerie', 'Thiel'); 
INSERT INTO guest VALUES (7, 'Treva', 'Lakin'); 
INSERT INTO guest VALUES (8, 'Wava', 'Hyatt'); 
INSERT INTO guest VALUES (9, 'Reese', 'Regmann'); 
INSERT INTO guest VALUES (10, 'Mathew', 'Wilkinson'); 
INSERT INTO guest VALUES (11, 'Amy', 'Franecki'); 
INSERT INTO guest VALUES (12, 'Columbus', 'Wolff'); 
INSERT INTO guest VALUES (13, 'Judd', 'Champlin'); 
INSERT INTO guest VALUES (14, 'Helene', 'Cartwright'); 
INSERT INTO guest VALUES (15, 'Damien', 'Lynch'); 
INSERT INTO guest VALUES (16, 'Lela', 'Swift'); 
INSERT INTO guest VALUES (17, 'Allison', 'Koelpin'); 
INSERT INTO guest VALUES (18, 'Anna', 'Smith'); 
INSERT INTO guest VALUES (19, 'Ben', 'Karlo'); 
INSERT INTO guest VALUES (20, 'Sahir', 'Mills'); 


CREATE TABLE guest_contact_details (
guest_contact_id INT(10) NOT NULL AUTO_INCREMENT, 
guest_id INT(10) NOT NULL, 
email CHAR(200) DEFAULT 'guest did not publish their email address', 
telephone CHAR(100) NOT NULL, 
socialmedia CHAR(200) DEFAULT 'guest did not publish any links to their social media', 
PRIMARY KEY (guest_contact_id), 
FOREIGN KEY (guest_id) REFERENCES guest(guest_id) ON UPDATE CASCADE
); 
INSERT INTO guest_contact_details VALUES (1, 1, 'millie.johns@gmail.com', '013-342-465', '@millskgs'); 
INSERT INTO guest_contact_details VALUES (2, 2, 'amir.wills@gmail.com', '093-332-475', '@amirkks'); 
INSERT INTO guest_contact_details VALUES (3, 3, 'norbert.effers@gmail.com', '035-436-365', '@norberttt'); 
INSERT INTO guest_contact_details VALUES (4, 4, 'lafayette.marvin@gmail.com', '064-863-356', '@lafayetteekgls'); 
INSERT INTO guest_contact_details VALUES (5, 5, 'hailey.gibson@gmail.com', '014-745-563', '@haileygibsonks'); 
INSERT INTO guest_contact_details VALUES (6, 6, 'valerie.thiel@gmail.com', '043-743-864', '@valerielsag'); 
INSERT INTO guest_contact_details VALUES (7, 7, 'treva.lakin@gmail.com', '083-372-435', '@trevakgls'); 
INSERT INTO guest_contact_details VALUES (8, 8, 'wava.hyatt@gmail.com', '086-563-745', '@wavakgls'); 
INSERT INTO guest_contact_details VALUES (9, 9, 'reese.regmann@gmail.com', '088-455-245', '@reesekgsv'); 
INSERT INTO guest_contact_details VALUES (10, 10, 'mathew.wilkinson@gmail.com', '023-643-467', '@methreewskls'); 
INSERT INTO guest_contact_details VALUES (11, 11, 'amy.franecki@gmail.com', '084-574-574', '@amyysihne'); 
INSERT INTO guest_contact_details VALUES (12, 12, 'columbus.wolff@gmail.com', '065-745-457', '@columbuswolfffls'); 
INSERT INTO guest_contact_details VALUES (13, 13, 'judd.champlin@gmail.com', '046-346-754', '@juddy.champlin'); 
INSERT INTO guest_contact_details VALUES (14, 14, 'helene.catwright@gmail.com', '053-765-555', '@helenecat'); 
INSERT INTO guest_contact_details VALUES (15, 15, 'damien.lynch@gmail.com', '012-987-544', '@damienly'); 
INSERT INTO guest_contact_details VALUES (16, 16, 'lela.swift@gmail.com', '084-457-975', '@lelaswiftt'); 
INSERT INTO guest_contact_details VALUES (17, 17, 'allison.koelpin@gmail.com', '075-475-475', '@allisonkoel'); 
INSERT INTO guest_contact_details VALUES (18, 18, 'anna.smith@gmail.com', '0', '@annasmithh'); 
INSERT INTO guest_contact_details VALUES (19, 19, 'ben.karlo@gmail.com', '054-745-467', '@bennykarloo'); 
INSERT INTO guest_contact_details VALUES (20, 20, 'sahir.mills@gmail.com', '035-745-346', '@sahirmill'); 

    
CREATE TABLE guest_login (
guest_login_id INT(10) NOT NULL AUTO_INCREMENT, 
guest_id INT(10) NOT NULL, 
username VARCHAR(100) NOT NULL, 
password CHAR(100) NOT NULL, 
PRIMARY KEY (guest_login_id),
FOREIGN KEY (guest_id) REFERENCES guest(guest_id) ON UPDATE CASCADE
);
INSERT INTO guest_login VALUES (1, 20, 'sahirmills', 'oU3yL8'); 
INSERT INTO guest_login VALUES (2, 19, 'benkarlo', '1mLeT4'); 
INSERT INTO guest_login VALUES (3, 18, 'annasmith', '0tSHKZ'); 
INSERT INTO guest_login VALUES (4, 17, 'allisonkoelpin', 'YtFT77'); 
INSERT INTO guest_login VALUES (5, 16, 'lelaswift', 'FtPl5B'); 
INSERT INTO guest_login VALUES (6, 15, 'damienlynch', '2BlMsN'); 
INSERT INTO guest_login VALUES (7, 14, 'helenecatwright', 'Z2TETK'); 
INSERT INTO guest_login VALUES (8, 13, 'juddchamplin', 'ypL7Sa'); 
INSERT INTO guest_login VALUES (9, 12, 'columbuswolff', 'YlMfA6'); 
INSERT INTO guest_login VALUES (10, 11, 'amyfranecki', 'P5JK8S'); 
INSERT INTO guest_login VALUES (11, 10, 'mathewwilkinson', '063MFW'); 
INSERT INTO guest_login VALUES (12, 9, 'reeseregmann', 'Q73IIS'); 
INSERT INTO guest_login VALUES (13, 8, 'wavahyatt', '083TGZ'); 
INSERT INTO guest_login VALUES (14, 7, 'trevalakin', 'znYtAL'); 
INSERT INTO guest_login VALUES (15, 6, 'valeriethiel', 'QEu3JT'); 
INSERT INTO guest_login VALUES (16, 5, 'haileygibson', 'ITLA3U'); 
INSERT INTO guest_login VALUES (17, 4, 'lafayettemarvin', '7RGLTB'); 
INSERT INTO guest_login VALUES (18, 3, 'norberteffers', 'sIyU4f'); 
INSERT INTO guest_login VALUES (19, 2, 'amirwills', 'TVir28'); 
INSERT INTO guest_login VALUES (20, 1, 'milliejohns', 'S59YFP'); 


CREATE TABLE guest_info (
guest_info_id INT(10) NOT NULL AUTO_INCREMENT, 
guest_id INT(10) NOT NULL, 
age INT(2) NOT NULL, 
gender VARCHAR(20), 
city VARCHAR(200), 
country VARCHAR(200), 
smoker BOOLEAN, 
pets BOOLEAN, 
music_instrument BOOLEAN,  
description TEXT, 
PRIMARY KEY (guest_info_id),
FOREIGN KEY (guest_id) REFERENCES guest(guest_id) ON UPDATE CASCADE
); 
INSERT INTO guest_info VALUES (1, 20, '40', 'female', 'Munich', 'Germany', '1', '0', '0', 'I am a very tidy person who loves to travel.'); 
INSERT INTO guest_info VALUES (2, 19, '43', 'female', 'Honolulu', 'United States', '1', '1', '0','I am a nice, calm family person.'); 
INSERT INTO guest_info VALUES (3, 18, '24', 'female', 'Vatican City', 'Vatican City', '0', '1', '0',  'The same way as my apartment is organizied and tidied up I will tidy the accommodation of the host.'); 
INSERT INTO guest_info VALUES (4, 17, '21', 'male', 'Beirut', 'Lebanon', '0', '1', '0',  'I am a friendly person who loves to travel with his family.'); 
INSERT INTO guest_info VALUES (5, 16, '19', 'female', 'Philadelphia', 'United States', '1', '0', '0', 'I am very open to visiting new countries and cities and learning about different cultures.'); 
INSERT INTO guest_info VALUES (6, 15, '64', 'male', 'Accra', 'Ghana', '0', '0', '0',  'I love travelling around with my wife and my 2 kids. We all are very calm people.'); 
INSERT INTO guest_info VALUES (7, 14, '35', 'male', 'Port of Spain', 'Trinidad and Tobago', '1', '0', '0', 'We are a friendly couple with interest in travel.'); 
INSERT INTO guest_info VALUES (8, 13, '64', 'male', 'Sarajevo', ' Bosnia and Herzegovina', '1', '0', '0','Nice,Tidy and Friendly - this is who i am.'); 
INSERT INTO guest_info VALUES (9, 12, '34', 'female', 'Valletta', 'Malta', '1', '0', '1',  'I have been travelling regularly since I´ve been 20 years old.'); 
INSERT INTO guest_info VALUES (10, 11, '44', 'male', 'Denver', 'United States', '1', '0', '0',  'Meeting new people is what I love about travelling and staying in Airbnbs.'); 
INSERT INTO guest_info VALUES (11, 10, '55', 'male', 'Nagoya', 'Japan', '1', '0', '0', 'I love being around new people, in new apartments and in new countries and cities.'); 
INSERT INTO guest_info VALUES (12, 9, '28', 'male', 'Guangzhou', 'China', '1', '1', '0', 'I am a very organized person who doesn´t smoke or drink.'); 
INSERT INTO guest_info VALUES (13, 8, '30', 'male', 'Odessa', 'Ukraine', '0', '0', '0', 'I love trying out to live in new countries. Airbnbns are of course the best option for that!'); 
INSERT INTO guest_info VALUES (14, 7, '76', 'female', 'Hanoi', 'Vietnam', '1', '0', '1', 'Me and my family are looking for an accommodation in which we can feel like we´re at home and enjoy our holidays.'); 
INSERT INTO guest_info VALUES (15, 6, '45', 'female', 'Doha', 'Qatar', '1', '1', '0', 'I´ve stayed in multiple Airbnbs before on my holidays and both the host and me saw that as a success.'); 
INSERT INTO guest_info VALUES (16, 5, '56', 'male', 'Manila', 'Philippines', '1', '0','0', 'I always keep my space tidy and organized. I value a clean enviroment and would describe myself as very calm and quite.'); 
INSERT INTO guest_info VALUES (17, 4, '36', 'male', 'Kolkata', 'India', '0', '0', '0', 'My partner and I have registered on this webiste to find a comfy place for our next holidays and Italy. We are very nice, friendly people who enjoy beautiful views.'); 
INSERT INTO guest_info VALUES (18, 3, '24', 'male', 'Vienna', 'Austria', '1', '0', '0', 'I would describe myself as a very excited, cool person who loves seeing new places and meeting new people.'); 
INSERT INTO guest_info VALUES (19, 2, '19', 'male', 'Montevideo', 'Uruguay', '0', '0', '0', 'I am a party-person. I love inviting people over and partying so it´s important to me that the accommodation allows that.'); 
INSERT INTO guest_info VALUES (20, 1, '40', 'female', 'Ingolstadt', 'Germany', '0', '0', '0', 'Travelling is one of my hobbies. I love seeing new countries.'); 



CREATE TABLE guest_rating (
guest_rating_id INT(10) NOT NULL AUTO_INCREMENT, 
guest_id INT(10) NOT NULL, 
host_id INT(10) NOT NULL, 
ratings_count INT(50), 
ratings TEXT, 
PRIMARY KEY (guest_rating_id), 
FOREIGN KEY (guest_id) REFERENCES guest(guest_id) ON UPDATE CASCADE,
FOREIGN KEY (host_id) REFERENCES host(host_id) ON UPDATE CASCADE
); 
INSERT INTO guest_rating VALUES (1, 20, 2, '2', 'Tihs guest was incredible!'); 
INSERT INTO guest_rating VALUES (2, 19, 4, '17', 'I would invite her over and over again.'); 
INSERT INTO guest_rating VALUES (3, 18, 3, '0', 'She was very nice but left the apartment messy, unfortunately.'); 
INSERT INTO guest_rating VALUES (4, 17, 2, '0', 'He and his family were really nice guests!'); 
INSERT INTO guest_rating VALUES (5, 16, 5, '10', 'Very unproblematic guest, would invite him again.'); 
INSERT INTO guest_rating VALUES (6, 15, 6, '3', 'We had some communication issues but all in one good guest.'); 
INSERT INTO guest_rating VALUES (7, 14, 10, '4', 'I´ve been her host a few times and each time it was a pleasure having her!'); 
INSERT INTO guest_rating VALUES (8, 13, 12, '5', 'A very tidy and organized person.'); 
INSERT INTO guest_rating VALUES (9, 12, 14, '0', 'Such.a friendly, helpful guest.'); 
INSERT INTO guest_rating VALUES (10, 11, 16, '0', 'Great! He even proposed to help cleaning up on his last day.'); 
INSERT INTO guest_rating VALUES (11, 10, 18, '1', 'I wish every guest was like that!'); 
INSERT INTO guest_rating VALUES (12, 9, 20, '20', 'Unfortunately she left the house really unorganized and even changed a few things.'); 
INSERT INTO guest_rating VALUES (13, 8, 20, '12', 'The couple apparently threw parties in my apartment which led to it being very messy.'); 
INSERT INTO guest_rating VALUES (14, 7, 3, '11', 'A very nice guest.'); 
INSERT INTO guest_rating VALUES (15, 6, 5, '7', 'Could stay even longer, really great person!'); 
INSERT INTO guest_rating VALUES (16, 5, 6, '2', 'This guest left the flat the same as it was before.'); 
INSERT INTO guest_rating VALUES (17, 4, 7, '0', 'Amazing!'); 
INSERT INTO guest_rating VALUES (18, 3, 11, '1', 'Wonderful person!'); 
INSERT INTO guest_rating VALUES (19, 2, 15, '3', 'Great person, very open to meeting new people and sharing their story.'); 
INSERT INTO guest_rating VALUES (20, 1, 17, '9', 'It´s was a pleasure having her and her great little family over at our place!'); 



CREATE TABLE accommodation (
accommodation_id INT(15) NOT NULL AUTO_INCREMENT, 
host_id INT(10) NOT NULL, 
PRIMARY KEY (accommodation_id), 
FOREIGN KEY (host_id) REFERENCES host(host_id)
); 
INSERT INTO accommodation VALUES (1, 1); 
INSERT INTO accommodation VALUES (2, 3); 
INSERT INTO accommodation VALUES (3, 4); 
INSERT INTO accommodation VALUES (4, 4); 
INSERT INTO accommodation VALUES (5, 5); 
INSERT INTO accommodation VALUES (6, 8); 
INSERT INTO accommodation VALUES (7, 9); 
INSERT INTO accommodation VALUES (8, 20); 
INSERT INTO accommodation VALUES (9, 6); 
INSERT INTO accommodation VALUES (10, 4); 
INSERT INTO accommodation VALUES (11, 2); 
INSERT INTO accommodation VALUES (12, 12); 
INSERT INTO accommodation VALUES (13, 11); 
INSERT INTO accommodation VALUES (14, 13); 
INSERT INTO accommodation VALUES (15, 14); 
INSERT INTO accommodation VALUES (16, 16); 
INSERT INTO accommodation VALUES (17, 17); 
INSERT INTO accommodation VALUES (18, 17); 
INSERT INTO accommodation VALUES (19, 19); 
INSERT INTO accommodation VALUES (20, 18); 
INSERT INTO accommodation VALUES (21, 18); 


CREATE TABLE size (
size_id INT(15) NOT NULL AUTO_INCREMENT, 
size_in_sm CHAR(10) NOT NULL, 
PRIMARY KEY (size_id)
); 
INSERT INTO size VALUES (1, '100'); 
INSERT INTO size VALUES (2, '38'); 
INSERT INTO size VALUES (3, '40'); 
INSERT INTO size VALUES (4, '120'); 
INSERT INTO size VALUES (5, '200'); 
INSERT INTO size VALUES (6, '55'); 
INSERT INTO size VALUES (7, '90'); 
INSERT INTO size VALUES (8, '18'); 
INSERT INTO size VALUES (9, '25'); 
INSERT INTO size VALUES (10, '40'); 
INSERT INTO size VALUES (11, '44'); 
INSERT INTO size VALUES (12, '39'); 
INSERT INTO size VALUES (13, '98'); 
INSERT INTO size VALUES (14, '27'); 
INSERT INTO size VALUES (15, '67'); 
INSERT INTO size VALUES (16, '60'); 
INSERT INTO size VALUES (17, '110'); 
INSERT INTO size VALUES (18, '90'); 
INSERT INTO size VALUES (19, '49'); 
INSERT INTO size VALUES (20, '38'); 

CREATE TABLE location_info (
location_info_id INT(15) NOT NULL AUTO_INCREMENT, 
info TEXT, 
PRIMARY KEY (location_info_id)
); 
INSERT INTO location_info VALUES (1, 'the neighborhood is amazing for families with children because it has a lot of playgrounds and a wonderful beach...'); 
INSERT INTO location_info VALUES (2, 'A great place to stay because of the calm families living there. Its never loud or dangerous.'); 
INSERT INTO location_info VALUES (3, ''); 
INSERT INTO location_info VALUES (4, ''); 
INSERT INTO location_info VALUES (5, ''); 
INSERT INTO location_info VALUES (6, ''); 
INSERT INTO location_info VALUES (7, ''); 
INSERT INTO location_info VALUES (8, ''); 
INSERT INTO location_info VALUES (9, ''); 
INSERT INTO location_info VALUES (10, ''); 
INSERT INTO location_info VALUES (11, ''); 
INSERT INTO location_info VALUES (12, ''); 
INSERT INTO location_info VALUES (13, ''); 
INSERT INTO location_info VALUES (14, ''); 
INSERT INTO location_info VALUES (15, ''); 
INSERT INTO location_info VALUES (16, ''); 
INSERT INTO location_info VALUES (17, ''); 
INSERT INTO location_info VALUES (18, ''); 
INSERT INTO location_info VALUES (19, ''); 
INSERT INTO location_info VALUES (20, ''); 



CREATE TABLE location (
location_id INT(10) NOT NULL AUTO_INCREMENT,
location_info_id INT(15) NOT NULL,
continent VARCHAR(200) NOT NULL, 
country VARCHAR(200) NOT NULL, 
city VARCHAR(200) NOT NULL, 
PRIMARY KEY (location_id),
FOREIGN KEY (location_info_id) REFERENCES location_info(location_info_id) ON UPDATE CASCADE
); 
INSERT INTO location VALUES (1, 1, '', 'Lahore', 'Pakistan'); 
INSERT INTO location VALUES (2, 2, 'Australia', 'Lima', 'Peru'); 
INSERT INTO location VALUES (3, 3, '', 'Seoul', 'South Korea'); 
INSERT INTO location VALUES (4, 4, '', 'Monterrey', 'Mexico'); 
INSERT INTO location VALUES (5, 5, '', 'Incheon', 'South Korea'); 
INSERT INTO location VALUES (6, 6, '', 'Lagos', 'Nigeria'); 
INSERT INTO location VALUES (7, 7, '', 'Dubai', 'United Arab Emirates'); 
INSERT INTO location VALUES (8, 8, '', 'Lusaka', 'Zambia'); 
INSERT INTO location VALUES (9, 9, '', 'Kharkiv', 'Ukraine'); 
INSERT INTO location VALUES (10, 10, '', 'Chittagong', 'Bangladesh'); 
INSERT INTO location VALUES (11, 11, '', 'Saint Petersburg', 'Russia'); 
INSERT INTO location VALUES (12, 12, '', 'Houston', 'United States'); 
INSERT INTO location VALUES (13, 13, '', 'Chennai', 'India'); 
INSERT INTO location VALUES (14, 14, '', 'Buenos Aires', 'Argentina'); 
INSERT INTO location VALUES (15, 15, '', 'Izmir', 'Turkey'); 
INSERT INTO location VALUES (16, 16, '', 'Algiers', 'Algeria'); 
INSERT INTO location VALUES (17, 17, '', 'Sydney', 'Australia'); 
INSERT INTO location VALUES (18, 18, '', 'Karaj', 'Iran'); 
INSERT INTO location VALUES (19, 19, '', 'Basra', 'Iraq'); 
INSERT INTO location VALUES (20, 20, '', 'Sao Paulo', 'Brazil'); 


CREATE TABLE properties (
properties_id INT(15) NOT NULL AUTO_INCREMENT, 
accommodation_id INT(15) NOT NULL,
size_id INT(15) NOT NULL, 
count_rooms INT(10) NOT NULL, 
count_beds INT(10) NOT NULL, 
PRIMARY KEY (properties_id), 
FOREIGN KEY (accommodation_id) REFERENCES accommodation(accommodation_id) ON UPDATE CASCADE, 
FOREIGN KEY (size_id) REFERENCES size(size_id) ON UPDATE CASCADE
);
INSERT INTO properties VALUES (1, 2, 3, 2, 1); 
INSERT INTO properties VALUES (2, 3, 4, 1, 1); 
INSERT INTO properties VALUES (3, 4, 5, 1, 1); 
INSERT INTO properties VALUES (4, 5, 6, 2, 1); 
INSERT INTO properties VALUES (5, 6, 7, 3, 1); 
INSERT INTO properties VALUES (6, 7, 8, 4, 1); 
INSERT INTO properties VALUES (7, 8, 9, 5, 2); 
INSERT INTO properties VALUES (8, 9, 10, 2, 1); 
INSERT INTO properties VALUES (9, 10, 11, 2, 1); 
INSERT INTO properties VALUES (10, 11, 12, 3, 1); 
INSERT INTO properties VALUES (11, 12, 13, 1, 1); 
INSERT INTO properties VALUES (12, 13, 14, 1, 1); 
INSERT INTO properties VALUES (13, 14, 15, 2, 1); 
INSERT INTO properties VALUES (14, 15, 16, 7, 2); 
INSERT INTO properties VALUES (15, 16, 17, 2, 1); 
INSERT INTO properties VALUES (16, 17, 18, 3, 1); 
INSERT INTO properties VALUES (17, 18, 19, 4, 2); 
INSERT INTO properties VALUES (18, 19, 20, 4, 1); 
INSERT INTO properties VALUES (19, 20, 1, 2, 1); 
INSERT INTO properties VALUES (20, 1, 2, 1, 1); 


CREATE TABLE type (
type_id INT(15) NOT NULL AUTO_INCREMENT, 
accommodation_id INT(15) NOT NULL, 
type VARCHAR(200) NOT NULL, 
PRIMARY KEY (type_id), 
FOREIGN KEY (accommodation_id) REFERENCES accommodation(accommodation_id) ON UPDATE CASCADE
); 
INSERT INTO type VALUES (1, 2, 'house'); 
INSERT INTO type VALUES (2, 4, 'apartment'); 
INSERT INTO type VALUES (3, 6, 'apartment'); 
INSERT INTO type VALUES (4, 8, 'flat'); 
INSERT INTO type VALUES (5, 10, 'house'); 
INSERT INTO type VALUES (6, 12, 'beach-house'); 
INSERT INTO type VALUES (7, 14, 'house'); 
INSERT INTO type VALUES (8, 16, 'house'); 
INSERT INTO type VALUES (9, 18, 'apartment'); 
INSERT INTO type VALUES (10, 20, 'apartment'); 
INSERT INTO type VALUES (11, 1, 'house'); 
INSERT INTO type VALUES (12, 3, 'apartment'); 
INSERT INTO type VALUES (13, 5, 'beach-house'); 
INSERT INTO type VALUES (14, 7, 'house'); 
INSERT INTO type VALUES (15, 9, 'flat'); 
INSERT INTO type VALUES (16, 11, 'house'); 
INSERT INTO type VALUES (17, 13, 'flat'); 
INSERT INTO type VALUES (18, 15, 'apartment'); 
INSERT INTO type VALUES (19, 17, 'house'); 
INSERT INTO type VALUES (20, 19, 'castle'); 


CREATE TABLE pricing (
pricing_id INT(15) NOT NULL AUTO_INCREMENT, 
accommodation_id INT(15) NOT NULL,
price_per_night CHAR(10) NOT NULL, 
PRIMARY KEY (pricing_id), 
FOREIGN KEY (accommodation_id) REFERENCES accommodation(accommodation_id) ON UPDATE CASCADE
); 
INSERT INTO pricing VALUES (1, 1, '48.50'); 
INSERT INTO pricing VALUES (2, 2, '120'); 
INSERT INTO pricing VALUES (3, 3, '100'); 
INSERT INTO pricing VALUES (4, 4, '99.99'); 
INSERT INTO pricing VALUES (5, 5, '39.40'); 
INSERT INTO pricing VALUES (6, 6, '60.20'); 
INSERT INTO pricing VALUES (7, 7, '28'); 
INSERT INTO pricing VALUES (8, 8, '88'); 
INSERT INTO pricing VALUES (9, 9, '85'); 
INSERT INTO pricing VALUES (10, 10, '75'); 
INSERT INTO pricing VALUES (11, 11, '49.99'); 
INSERT INTO pricing VALUES (12, 12, '200'); 
INSERT INTO pricing VALUES (13, 13, '510'); 
INSERT INTO pricing VALUES (14, 14, '230.50'); 
INSERT INTO pricing VALUES (15, 15, '200'); 
INSERT INTO pricing VALUES (16, 16, '37'); 
INSERT INTO pricing VALUES (17, 17, '66'); 
INSERT INTO pricing VALUES (18, 18, '76.70'); 
INSERT INTO pricing VALUES (19, 19, '43.20'); 
INSERT INTO pricing VALUES (20, 20, '1000'); 


CREATE TABLE availability (
availability_id INT(15) NOT NULL AUTO_INCREMENT, 
accommodation_id INT(15) NOT NULL,
min_nights CHAR(10) NOT NULL DEFAULT 'free',
max_nights CHAR(10) NOT NULL DEFAULT 'free',
PRIMARY KEY (availability_id), 
FOREIGN KEY (accommodation_id) REFERENCES accommodation(accommodation_id) ON UPDATE CASCADE
); 
INSERT INTO availability VALUES (1, 1, 1, 30); 
INSERT INTO availability VALUES (2, 3, 2, 60); 
INSERT INTO availability VALUES (3, 5, 1, 16); 
INSERT INTO availability VALUES (4, 7, 1, 14); 
INSERT INTO availability VALUES (5, 9, 1, 30); 
INSERT INTO availability VALUES (6, 11, 1, 60); 
INSERT INTO availability VALUES (7, 13, 2, 60); 
INSERT INTO availability VALUES (8, 15, 1, 80); 
INSERT INTO availability VALUES (9, 17, 1, 10); 
INSERT INTO availability VALUES (10, 19, 1, 20); 
INSERT INTO availability VALUES (11, 20, 1, 20); 
INSERT INTO availability VALUES (12, 18, 3, 30); 
INSERT INTO availability VALUES (13, 16, 1, 14); 
INSERT INTO availability VALUES (14, 14, 1, 30); 
INSERT INTO availability VALUES (15, 12, 1, 20); 
INSERT INTO availability VALUES (16, 10, 2, 20); 
INSERT INTO availability VALUES (17, 8, 1, 18); 
INSERT INTO availability VALUES (18, 6, 3, 25); 
INSERT INTO availability VALUES (19, 4, 1, 28); 
INSERT INTO availability VALUES (20, 2, 2, 32); 



CREATE TABLE pictures (
pic_id INT(15) NOT NULL AUTO_INCREMENT, 
accommodation_id INT(15) NOT NULL,
count_pics INT(15) NOT NULL,  
PRIMARY KEY(pic_id), 
FOREIGN KEY (accommodation_id) REFERENCES accommodation(accommodation_id) ON UPDATE CASCADE
); 
INSERT INTO pictures VALUES (1, 1, 5); 
INSERT INTO pictures VALUES (2, 2, 14); 
INSERT INTO pictures VALUES (3, 3, 20); 
INSERT INTO pictures VALUES (4, 4, 2); 
INSERT INTO pictures VALUES (5, 5, 1); 
INSERT INTO pictures VALUES (6, 6, 12); 
INSERT INTO pictures VALUES (7, 7, 13); 
INSERT INTO pictures VALUES (8, 8, 22); 
INSERT INTO pictures VALUES (9, 9, 5); 
INSERT INTO pictures VALUES (10, 10, 15); 
INSERT INTO pictures VALUES (11, 11, 16); 
INSERT INTO pictures VALUES (12, 12, 4); 
INSERT INTO pictures VALUES (13, 13, 3); 
INSERT INTO pictures VALUES (14, 14, 2); 
INSERT INTO pictures VALUES (15, 15, 1); 
INSERT INTO pictures VALUES (16, 16, 18); 
INSERT INTO pictures VALUES (17, 17, 30); 
INSERT INTO pictures VALUES (18, 18, 26); 
INSERT INTO pictures VALUES (19, 19, 22); 
INSERT INTO pictures VALUES (20, 20, 17); 


CREATE TABLE description (
desc_id INT(15) NOT NULL AUTO_INCREMENT, 
accommodation_id INT(15) NOT NULL, 
pricing_id INT(15) NOT NULL, 
availability_id INT(15) NOT NULL, 
pic_id INT(15) NOT NULL, 
description TEXT, 
PRIMARY KEY (desc_id),
FOREIGN KEY (accommodation_id) REFERENCES accommodation(accommodation_id) ON UPDATE CASCADE,
FOREIGN KEY (pricing_id) REFERENCES pricing(pricing_id) ON UPDATE CASCADE,
FOREIGN KEY (availability_id) REFERENCES availability(availability_id) ON UPDATE CASCADE,
FOREIGN KEY (pic_id) REFERENCES pictures(pic_id) ON UPDATE CASCADE
); 
INSERT INTO description VALUES (1, 2, 3, 4, 5, 'this beautiful house is located not far away from the beach where you can spend your time...'); 
INSERT INTO description VALUES (2, 3, 4, 5, 6, 'In this accommodation any guest will feel like at home. The amazing, creative interior design is eye-catching...'); 
INSERT INTO description VALUES (3, 4, 5, 6, 7, 'this apartment is one of the biggest in the neighborhood...'); 
INSERT INTO description VALUES (4, 5, 6, 7, 8, 'In this house you will have a luxury filled holidays. The private pool is the perfect spot to relax after going to the beach...'); 
INSERT INTO description VALUES (5, 6, 7, 8, 9, 'This accommodation has a lot of special extras that will make you feel like a queen or a king...'); 
INSERT INTO description VALUES (6, 7, 8, 9, 10, 'Quiet little lodging  on the ground-floor with 1 bathroom, small kitchen, Sat-TV, free W-LAN connection, telephone and independent entrance.'); 
INSERT INTO description VALUES (7, 8, 9, 10, 11, 'The new Villa Goyen - The View House impresses with its exclusive location and the unique panoramic views of the surrounding mountain panorama and the Merano valley basin.'); 
INSERT INTO description VALUES (8, 9, 10, 11, 12, 'On the 2nd floor of our chalet, there is this cosy  penthouse with a bedroom, a bathroom and a  living area with a kitchen. A small terrace watching the mountains will give you unforgettable moments at sunset!'); 
INSERT INTO description VALUES (9, 10, 11, 12, 13, 'This spacious and comfortable luxury apartment is situated in the middle of the charming centre of Zell am See, Salzburg.'); 
INSERT INTO description VALUES (10, 11, 12, 13, 14, 'Our Alpine penthouse is unique in its form:  The Alpen Penthouse is a luxurious hideaway for nature lovers and sports fans, for families and friends who value holiday enjoyment in a private ambience'); 
INSERT INTO description VALUES (11, 12, 13, 14, 15, 'No better place to isolate & relax. Welcome to Indio Hills Desert Escape. If you don’t mind being 20 minutes away from everything, come out & see what it’s like to really get away.'); 
INSERT INTO description VALUES (12, 13, 14, 15, 16, ' You found it! The Happy Owl Lakehouse, built in 2019, has been lovingly designed to provide guests with an unforgettable experience of beauty, comfort, and joy. '); 
INSERT INTO description VALUES (13, 14, 15, 16, 17, 'Clean, Zen modern backyard cottage, easy access to SXSW, convention center, great dining, and public transportation.'); 
INSERT INTO description VALUES (14, 15, 16, 17, 18, 'Amazing opportunity to stay in our beachfront penthouse. '); 
INSERT INTO description VALUES (15, 16, 17, 18, 19, 'Just steps away from feeling your toes in the sand! An intimate collection of 11 ocean view suites on Californias most sought-after beach.'); 
INSERT INTO description VALUES (16, 17, 18, 19, 20, 'Take in garden and neighborhood views while resting on an amazingly heavenly bed in this bright and sunny bedroom'); 
INSERT INTO description VALUES (17, 18, 19, 20, 1, 'Guest room in my Hollywood Hills home.  Private bathroom, flat screen TV, California King bed (my friends call it the W Hotel Suite).'); 
INSERT INTO description VALUES (18, 19, 20, 1, 2, 'Distance here! Propose here! Inspire here! Love it here. A Premium magical space with six skylights with views of stars and whimsical oaks and priority access to open-air treehouse'); 
INSERT INTO description VALUES (19, 20, 1, 2, 3, 'This elegant converted 1925 church rectory in French Gothic style features original stained-glass windows, and one charming guestroom + bath with claw foot tub/shower, chandelier, A/C, and shared kitchen.'); 
INSERT INTO description VALUES (20, 1, 2, 3, 4, 'Enjoy your own brand new boho vibe private bedroom in our artist apartment! Your private bathroom is right across the hallway.'); 


CREATE TABLE accommodation_ratings (
acc_ratings_id INT(15) NOT NULL AUTO_INCREMENT, 
accommodation_id INT(15) NOT NULL, 
ratings_count INT(20) NOT NULL, 
acc_ratings TEXT,
PRIMARY KEY (acc_ratings_id), 
FOREIGN KEY (accommodation_id) REFERENCES accommodation(accommodation_id) ON UPDATE CASCADE
); 
INSERT INTO accommodation_ratings VALUES (1, 2, 5, 'I stayed here for a month for work. This is a great place, especially if you are doing longer stays. The apartment is also set up with a home office and everyone has a private bathroom.'); 
INSERT INTO accommodation_ratings VALUES (2, 4, 2, 'Great place to stay! Location is very close to the metro gold line, and the check-in process was explained very well!'); 
INSERT INTO accommodation_ratings VALUES (3, 6, 1, 'Nice place to stay on a budget. Centrally located and lots to do within walking distance. We would stay here again.'); 
INSERT INTO accommodation_ratings VALUES (4, 8, 6, 'The room was nice, each room has its own bathroom, office area was great, and living room area was beautiful.'); 
INSERT INTO accommodation_ratings VALUES (5, 10, 15, 'My sister and I had a good week in Catherines place. The location was good just less than 10 mins to Del Mar station which is perfect for tourists without a car. '); 
INSERT INTO accommodation_ratings VALUES (6, 12, 70, 'We had a lovely stay. The vibe was very relaxing and felt like home. There were enough amenities, both in kitchen as in the study area. The bed sheets, duvet and room were good. '); 
INSERT INTO accommodation_ratings VALUES (7, 14, 23, ' It is in walkable distance from the restaurants, groceries, public park, and public transportations. '); 
INSERT INTO accommodation_ratings VALUES (8, 16, 6, 'Perfect location. Best for longer stays right now because the rooms are set up well for privacy!'); 
INSERT INTO accommodation_ratings VALUES (9, 18, 2, 'My best friend and I stayed here and loved this stylish place! We took a lot of pictures and overall enjoyed our stay while having privacy.'); 
INSERT INTO accommodation_ratings VALUES (10, 20, 1, 'Very cute place. Overnight parking in the street was a breeze, would absolutely come back!'); 
INSERT INTO accommodation_ratings VALUES (11, 19, 7, 'An amazing place to stay! The room and bathroom were both clean and the hosts were hospitable! I cannot wait to stay there again!'); 
INSERT INTO accommodation_ratings VALUES (12, 17, 5, 'Clean and comfortable, listing is accurate :)'); 
INSERT INTO accommodation_ratings VALUES (13, 15, 8, 'A cool stay. Very chill'); 
INSERT INTO accommodation_ratings VALUES (14, 13, 20, 'It was super clean and enjoyed my stay !'); 
INSERT INTO accommodation_ratings VALUES (15, 11, 13, 'Great Host & great space'); 
INSERT INTO accommodation_ratings VALUES (16, 9, 12, 'Such a cute space + hosts respond very quickly!'); 
INSERT INTO accommodation_ratings VALUES (17, 7, 7, 'This is a very nice place. And the privacy was good to have. Very clean, and its a great location.'); 
INSERT INTO accommodation_ratings VALUES (18, 5, 7, 'Cute little room! The place was nicely decorated and it was very clean. Very close to everything in Pasadena and we enjoyed the area the most! Everything was walking distance.'); 
INSERT INTO accommodation_ratings VALUES (19, 3, 3, 'Two thumbs up!!!!'); 
INSERT INTO accommodation_ratings VALUES (20, 1, 50, 'I would definitely stay here again if I have to in the future! Great hosts and great space'); 











