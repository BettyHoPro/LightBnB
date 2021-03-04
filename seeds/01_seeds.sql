-- users db
INSERT INTO users (name, email, password) 
VALUES ('Betty Ho', 'bettyvisualtech@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Utada', 'utada@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Kygo', 'kygo@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (
  owner_id, title, 
  description,   
  thumbnail_photo_url ,
  cover_photo_url ,
  cost_per_night ,
  parking_spaces ,
  number_of_bathrooms ,
  number_of_bedrooms ,
  country ,
  street ,
  city ,
  province ,
  post_code ,
  active)
  VALUES (
    1,'The house to chill like at home', 'decription', 'https://images.com/photos/small-1', 'https://images.com/photos/1',120, 1, 1, 1, 'Canada', 'west6th ave', 'vancouver', 'BC', 'V6M0S7', TRUE
  ),
  (
    2,'rocker musician', 'decription', 'https://images.com/photos/small-2', 'https://images.com/photos/2',150, 1, 2, 1, 'Canada', 'west6th ave', 'Richmond', 'BC', 'V6M3XM', TRUE
  ),
  (
    3,'Sweet Dream', 'decription', 'https://images.com/photos/small-3', 'https://images.com/photos/3',90, 1, 1, 1, 'Canada', 'west6th ave', 'Burnaby', 'BC', 'M6M0S7', FALSE
  );

INSERT INTO reservations (guest_id, property_id, start_date, end_date) 
VALUES (1, 1, '2018-09-11', '2018-09-26'),
(2, 2, '2019-01-04', '2019-02-01'),
(3, 2, '2020-10-01', '2020-12-14');


INSERT INTO property_reviews (
  guest_id, property_id, reservation_id, rating, message)
  VALUES (1, 1, 1, 4, 'message'),
  (2, 2, 2, 5, 'message'),
  (3, 2, 3, 2, 'message');