CREATE TABLE [Admins] (
    [AdminID] int NOT NULL IDENTITY,
    [Username] nvarchar(50) NOT NULL,
    [Password] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_Admins] PRIMARY KEY ([AdminID])
);

CREATE TABLE [AdminSessions] (
    [AdminSessionID] int NOT NULL IDENTITY,
    [AdminID] int NOT NULL,
    [Username] nvarchar(50) NULL,
    [SessionID] nvarchar(max) NOT NULL,
    [SessionTime] datetime2 NOT NULL,
    CONSTRAINT [PK_AdminSessions] PRIMARY KEY ([AdminSessionID])
);

CREATE TABLE [CartItems] (
    [CartItemID] int NOT NULL IDENTITY,
    [Product] nvarchar(50) NOT NULL,
    [Quantity] int NOT NULL,
    [Price] decimal(18,2) NOT NULL,
    [Username] nvarchar(max) NULL,
    CONSTRAINT [PK_CartItems] PRIMARY KEY ([CartItemID])
);

CREATE TABLE [Customers] (
    [CustomerID] int NOT NULL IDENTITY,
    [Username] nvarchar(50) NOT NULL,
    [Password] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_Customers] PRIMARY KEY ([CustomerID])
);

CREATE TABLE [CustomerSessions] (
    [CustomerSessionID] int NOT NULL IDENTITY,
    [CustomerID] int NOT NULL,
    [Username] nvarchar(50) NULL,
    [SessionID] nvarchar(max) NOT NULL,
    [SessionTime] datetime2 NOT NULL,
    CONSTRAINT [PK_CustomerSessions] PRIMARY KEY ([CustomerSessionID])
);

CREATE TABLE [OrderDetails] (
    [OrderID] int NOT NULL IDENTITY,
    [OrderTime] datetime2 NOT NULL,
    [TableID] int NOT NULL,
    [Username] nvarchar(50) NULL,
    [Product] nvarchar(50) NOT NULL,
    [Quantity] int NOT NULL,
    [Price] decimal(18,2) NOT NULL,
    CONSTRAINT [PK_OrderDetails] PRIMARY KEY ([OrderID])
);

CREATE TABLE [Products] (
    [ProductID] int NOT NULL IDENTITY,
    [ProductName] nvarchar(50) NOT NULL,
    [ProductTypeName] nvarchar(50) NOT NULL,
    [ProductQuantity] int NOT NULL,
    [ProductPrice] decimal(18,2) NOT NULL,
    CONSTRAINT [PK_Products] PRIMARY KEY ([ProductID])
);

insert into Products (ProductName, ProductTypeName, ProductQuantity, ProductPrice)
values
  ('Guinness', 'Bottle', '100', '3.3'),
  ('Guinness', 'Can', '100', '3.1'),
  ('Guinness', 'Pint', '200', '3.6'),
  ('Guinness', 'Draught', '20', '3.9'),
  ('Budweiser', 'Bottle', '100', '3.4'),
  ('Budweiser', 'Can', '100', '3.2'),
  ('Budweiser', 'Pint', '200', '3.7'),
  ('Budweiser', 'Draught', '20', '4'),
  ('Carling', 'Bottle', '100', '3.1'),
  ('Carling', 'Can', '100', '3'),
  ('Carling', 'Pint', '200', '3.4'),
  ('Carling', 'Draught', '20', '3.6'),
  ('Stella Artois', 'Bottle', '100', '3.4'),
  ('Stella Artois', 'Can', '100', '3.2'),
  ('Stella Artois', 'Pint', '200', '3.7'),
  ('Stella Artois', 'Draught', '20', '4'),
  ('Strongbow', 'Bottle', '100', '3.1'),
  ('Strongbow', 'Can', '100', '3'),
  ('Strongbow', 'Pint', '200', '3.3'),
  ('Strongbow', 'Draught', '20', '3.4'),
  ('Jack Daniel''s Tennessee Whiskey', 'Single', '10', '3.4'),
  ('Jack Daniel''s Tennessee Whiskey', 'Large Single', '30', '3.7'),
  ('Jack Daniel''s Tennessee Whiskey', 'Double', '10', '4.2'),
  ('Jack Daniel''s Tennessee Whiskey', 'Large Double', '30', '4.6'),
  ('Jack Daniel''s Tennessee Whiskey', 'Bottle', '5', '18'),
  ('Famous Grouse Scotch Whisky', 'Single', '38', '3.5'),
  ('Famous Grouse Scotch Whisky', 'Large Single', '10', '3.9'),
  ('Famous Grouse Scotch Whisky', 'Double', '30', '4.3'),
  ('Famous Grouse Scotch Whisky', 'Large Double', '10', '4.6'),
  ('Famous Grouse Scotch Whisky', 'Bottle', '5', '14'),
  ('Russian Standard Vodka', 'Single', '38', '3.8'),
  ('Russian Standard Vodka', 'Large Single', '10', '4.4'),
  ('Russian Standard Vodka', 'Double', '30', '4.6'),
  ('Russian Standard Vodka', 'Large Double', '10', '4.9'),
  ('Russian Standard Vodka', 'Bottle', '5', '13'),
  ('Gordon''s Special Dry London Gin', 'Single', '38', '3.4'),  
  ('Gordon''s Special Dry London Gin', 'Large Single', '10', '3.6'),
  ('Gordon''s Special Dry London Gin', 'Double', '30', '3.8'),
  ('Gordon''s Special Dry London Gin', 'Large Double', '10', '4'),
  ('Gordon''s Special Dry London Gin', 'Bottle', '5', '16'),
  ('Captain Morgan Spiced Gold Rum', 'Single', '38', '3.5'),
  ('Captain Morgan Spiced Gold Rum', 'Large Single', '10', '3.7'),
  ('Captain Morgan Spiced Gold Rum', 'Double', '30', '3.9'),
  ('Captain Morgan Spiced Gold Rum', 'Large Double', '10', '4.3'),
  ('Captain Morgan Spiced Gold Rum', 'Bottle', '5', '15'),
  ('Jameson Irish Whiskey Caskmates', 'Single', '30', '3.4'),
  ('Jameson Irish Whiskey Caskmates', 'Large Single', '10', '3.7'),
  ('Jameson Irish Whiskey Caskmates', 'Double', '26', '3.9'),
  ('Jameson Irish Whiskey Caskmates', 'Large Double', '5', '4.2'),
  ('Jameson Irish Whiskey Caskmates', 'Bottle', '5', '20'),
  ('Grey Goose Vodka', 'Single', '30', '3.7'),
  ('Grey Goose Vodka', 'Large Single', '10', '3.9'),
  ('Grey Goose Vodka', 'Double', '26', '4.3'),
  ('Grey Goose Vodka', 'Large Double', '5', '4.6'),
  ('Grey Goose Vodka', 'Bottle', '5', '39'),
  ('Southern Comfort', 'Single', '30', '3.4'),
  ('Southern Comfort', 'Large Single', '10', '3.6'),
  ('Southern Comfort', 'Double', '26', '3.8'),
  ('Southern Comfort', 'Large Double', '5', '4'),
  ('Southern Comfort', 'Bottle', '5', '21'),
  ('Johnnie Walker Black Label', 'Single', '10', '4.2'),
  ('Johnnie Walker Black Label', 'Large Single', '10', '4.9'),
  ('Johnnie Walker Black Label', 'Double', '26', '5.3'),
  ('Johnnie Walker Black Label', 'Large Double', '5', '5.8'),
  ('Johnnie Walker Black Label', 'Bottle', '5', '30'),
  ('Crystal Head', 'Single', '27', '3.8'),
  ('Crystal Head', 'Large Single', '20', '4.1'),
  ('Crystal Head', 'Double', '6', '4.4'),
  ('Crystal Head', 'Large Double', '6', '4.7'),
  ('Crystal Head', 'Bottle', '3', '55'),
  ('Patrón Silver Tequila', 'Single', '84', '4.9'),
  ('Patrón Silver Tequila', 'Large Single', '40', '5.7'),
  ('Patrón Silver Tequila', 'Bottle', '5', '25'),
  ('Don Julio Reposado Tequila', 'Single', '84', '6.1'),
  ('Don Julio Reposado Tequila', 'Large Single', '40', '7.9'),
  ('Don Julio Reposado Tequila', 'Bottle', '5', '34'),
  ('Herradura Añejo Tequila', 'Single', '84', '4.8'),
  ('Herradura Añejo Tequila', 'Large Single', '40', '5.6'),
  ('Herradura Añejo Tequila', 'Bottle', '5', '43'),
  ('Kah Skull Anejo Tequila', 'Single', '84', '4.6'),
  ('Kah Skull Anejo Tequila', 'Large Single', '40', '5.3'),
  ('Kah Skull Anejo Tequila', 'Bottle', '5', '58'),
  ('Barefoot Cabernet Sauvignon', 'Small Glass', '20', '2.9'),
  ('Barefoot Cabernet Sauvignon', 'Standard Glass', '28', '3.2'),
  ('Barefoot Cabernet Sauvignon', 'Large Glass', '15', '3.5'),
  ('Barefoot Cabernet Sauvignon', 'Bottle', '5', '11'),
  ('McGuigan Black Label Pinot Grigio', 'Small Glass', '20', '3.1'),
  ('McGuigan Black Label Pinot Grigio', 'Standard Glass', '28', '3.4'),
  ('McGuigan Black Label Pinot Grigio', 'Large Glass', '15', '3.7'),
  ('McGuigan Black Label Pinot Grigio', 'Bottle', '5', '12'),
  ('Casillero del Diablo Rose', 'Small Glass', '20', '3.2'),
  ('Casillero del Diablo Rose', 'Standard Glass', '28', '3.5'),
  ('Casillero del Diablo Rose', 'Large Glass', '15', '3.8'),
  ('Casillero del Diablo Rose', 'Bottle', '5', '20'),
  ('Moët & Chandon Brut Impérial', 'Small Glass', '20', '3.5'),
  ('Moët & Chandon Brut Impérial', 'Standard Glass', '28', '3.7'),
  ('Moët & Chandon Brut Impérial', 'Large Glass', '15', '4.2'),
  ('Moët & Chandon Brut Impérial', 'Bottle', '5', '45'),
  ('Coca-Cola', 'Bottle', '100', '2.8'),
  ('Coca-Cola', 'Can', '100', '2.1'),
  ('Fever-Tree Tonic Water', 'Bottle', '50', '1.9'),
  ('Fever-Tree Tonic Water', 'Can', '50', '1.6'),
  ('Canada Dry Ginger Ale', 'Can', '50', '2.8'),
  ('J2o Spritz', 'Bottle', '50', '2.7'),
  ('Smiths Scampi Fries', 'Pack', '500', '1.5'),
  ('Walkers Salt and Vinegar Crisps', 'Pack', '500', '1.6'),
  ('Smiths Bacon Fries', 'Serve', '500', '1.5'),
  ('Pringles', 'Can', '500', '2.9'),
  ('Sausage Roll', 'Serve', '500', '2.1'),
  ('Scotch Egg', 'Serve', '500', '2.2'),
  ('KP Peanuts Salt & Vinegar Flavour', 'Pack', '500', '1.6'),
  ('Pork Pie', 'Serve', '500', '2.2');

insert into Admins (Username, Password)
values
  ('admin', '$s2$16384$8$1$9VD6zPBSeP9nsILR/L9U1obojmsXqe5W8otP5FQURhw=$22E0A+iOnEYmUfqkNgH2TeY9b530h/D/RHTofFX6wQM='),
  ('admin02', '$s2$16384$8$1$/vj99biubM1urB85onbYI0c7dT7EvAE9pyTgLCxgOYc=$nRcrt5qEPI/ThD67V7zcebAcoWWt6+7+z15SavufJQE=')

insert into Customers (Username, Password)
values
  ('customer01', '$s2$16384$8$1$AVlFHQDVXg8Bqs/Yrx8UsZG/x5iV570SyTRG7C2dYWg=$UKxCXCN9jIUGgbHYYFE6f0e9mqRuZEUyZ5aOurB6TlA='),
  ('customer02', '$s2$16384$8$1$RRUZ3dchs5/3alS/lj97wNf8tNoN/lDSnyeqckCftrs=$kFn15K8ksTo4mCjuSoePgx22Zqx4jI8c7aoohZ9uUSk='),
  ('customer03', '$s2$16384$8$1$qV7xw9ioC7vbVfXMbKj4EaPKTMXVJajJ2a74+T322nY=$qlGHFCj2+LzM+N2SNmNby0YKfXoH/m/1Bu8o/cF3tOQ=')