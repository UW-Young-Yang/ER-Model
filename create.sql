drop table if exists User;
drop table if exists Item;
drop table if exists Category;
drop table if exists Bidder;

create table User(
    UserId CHAR(256) PRIMARY KEY,
    Rating INT,
    Location CHAR(256),
    Country CHAR(256)
);

create table Item(
    ItemId BIGINT,
    SId CHAR(256),
    Name CHAR(256),
    Currently FLOAT,
    BuyPrice FLOAT,
    FirstBid FLOAT,
    NumberBids INT,
    Started DATETIME,
    Ends DATETIME,
    Description VARCHAR(1000),
    PRIMARY KEY (ItemId),
    FOREIGN KEY (SId) REFERENCES User(UserId)
);

create table Category(
    Category CHAR(256),
    ItemId BIGNIT,
    PRIMARY KEY (Category, ItemId),
    FOREIGN KEY (ItemId) REFERENCES Item(ItemId)
);

create table Bidder(
    BId CHAR(256),
    ItemId BIGINT,
    Time DATETIME,
    Amount FLOAT,
    PRIMARY KEY (BId, ItemId, Time),
    FOREIGN KEY (BId) REFERENCES User(UserId)
    FOREIGN KEY (ItemId) REFERENCES Item(ItemId)
);