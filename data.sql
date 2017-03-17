
INSERT INTO stores (name, address, phone)
VALUES ('Salt and Peper Restaurant', '11 Bourke Street, Southern Cross, Melbourne' , '(03)9851-33482'),
('Angus Steak House', '72 Collins Street, Flinders Street, Melbourne', '(03)9362-4282'),
('Glass House Cafe', '52 King Street, Docklands, Melbourne', '(03)9428-6783');


INSERT INTO items (name, price, picture, info, store_id)
VALUES
('Garlic Bread', 6 , 'https://goo.gl/nZ0Z1J' , 'crushed garlic, olive oil , bread' , 1),
('Breads with three dips', 12 , 'https://goo.gl/5vOBdk' , 'breads, olives, humus, sundrided tomato dips' , 1),
('Rib Fillet Steak', 35 , 'https://goo.gl/q0J21z', '300gm steak', 1),
('Atlantic Salmon' , 29 , 'https://goo.gl/nCJuaK' , 'lemon capers dill crème sauce',1),
('Creme Brulee', 12 , 'https://goo.gl/WO6NgY' , 'berry compote, ice cream ' , 1 ),

('Garlic Prawn Crepe' , 13 , 'https://goo.gl/G4dhVF' , 'creme sauce, tomato puree' , 2 ),
('Standing Rib Fillet Steak', 35 , 'https://goo.gl/ma8xnb', '300gm steak', 2 ),
('Black Angas Rib Eye Steak', 33 , 'https://goo.gl/9FQWiQ' , '280gm msa certified serve with roasted potato and green beans', 2 ),
('265 day grain fed black angas rump' , 32 , 'https://goo.gl/3D00qN' , '300gm msa certified', 2),
('Cheese Board' , 12 , 'https://goo.gl/7N6Wvs' , 'A selection of artisan cheeses served with fig jam, assorted crackers and seasonal fruit',2),

('Bruschetta' , 12 , 'https://goo.gl/63dpr2' , 'Avocado, diced tomato, Spanish onion, garlic oil, basil and Grana Padana on lightly toasted bread', 3),
('Szechuan Calamari	' , 15 , 'https://goo.gl/AIPY5x' , 'Lightly fried Szechuan calamari served with nam jim sauce and lemon', 3),
('Lamb', 36 , 'https://goo.gl/JuNf0Z' , 'Moroccan spiced and lightly basted' , 3),
('Pork Fillet', 32 , 'https://goo.gl/GFC9TP' , 'Szechuan glazed pork fillet and pineapple lightly basted' , 3),
('Apple Pie', 14 , 'https://goo.gl/NuCv24', 'Fried apple cigar with apple liqueur toffee, sour apple gel, mascarpone ice cream and smoked maple syrup', 3);
