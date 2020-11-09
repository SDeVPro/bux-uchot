create table budget(
    codename varchar(255) primary key,
    daily_limit integer
);

create table category(
    codename varchar(255) primary key,
    name varchar(255),
    is_base_expense boolean,
    aliases text
);

create table expense(
    id integer primary key,
    amount integer,
    created datetime,
    category_codename integer,
    raw_text text,
    FOREIGN KEY(category_codename) REFERENCES category(codename)
);

insert into category (codename, name, is_base_expense, aliases)
values
    ("products", "productlar", true, "oziq-ovqat"),
    ("coffee", "kofe", true, ""),
    ("dinner", "obed", true, "oshxona, lanch, biznes-lanch, biznes lanch"),
    ("cafe", "kafe", true, "restoran, rest, mak, maxway, evos, kfc, oqtepa, grill"),
    ("transport", "transport", false, "metro, avtobus, marshrut"),
    ("taxi", "taksi", false, "yandeks taxi, taxi"),
    ("phone", "telefon", false, "telefon, aloqa"),
    ("books", "kitoblar", false, "adabiyot, ilmiy, kitob"),
    ("internet", "internet", false, "internet, inet"),
    ("subscriptions", "podpiska", false, "podpiskachilar"),
    ("other", "boshqa", true, "");

insert into budget(codename, daily_limit) values ('base', 500);
