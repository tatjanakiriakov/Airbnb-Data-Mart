USE airbnb_datamart; 

SELECT firstname FROM host; 

SELECT password FROM host_login WHERE username='carosk';

DELETE FROM host_contact_details WHERE host_contact_id=4;
SELECT * FROM host_contact_details; 

SELECT percentage FROM host_reply WHERE host_id=2;

UPDATE host_info
SET age=33, superhost=1
WHERE host_info_id=2;
SELECT * FROM host_info; 

SELECT host_ratings FROM host_rating 
WHERE count >= 15; 

SELECT firstname FROM guest; 

UPDATE guest_contact_details
SET email='marc.sinus@gmail.com', telephone='234-754-634'
WHERE guest_contact_id = 1; 
SELECT * FROM guest_contact_details WHERE guest_contact_id = 1; 

SELECT username, password FROM guest_login; 

SELECT age FROM guest_info WHERE gender = 'female'; 

SELECT * FROM guest_rating WHERE ratings_count > 10; 

DELETE FROM accommodation WHERE accommodation_id = 21; 

SELECT * FROM size; 

SELECT info FROM location_info WHERE location_info_id=2; 

UPDATE location 
SET continent='Europe', country='Germany', city='Augsburg'
WHERE location_id = 2; 
SELECT * FROM location WHERE location_id=2; 

SELECT * FROM properties WHERE count_rooms=count_beds; 

SELECT type FROM type; 

SELECT price_per_night, accommodation_id FROM pricing WHERE price_per_night>100; 

SELECT * FROM availability WHERE min_nights=1; 

SELECT count_pics, accommodation_id FROM pictures WHERE count_pics>10; 

UPDATE description 
SET description='This wonderful accommodation is near to the beach and perfect for families with kids'
WHERE accommodation_id = 2; 

SELECT acc_ratings FROM accommodation_ratings WHERE ratings_count<10; 
