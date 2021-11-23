create table Products (
	id integer primary key identity,
	prod_name nvarchar(30) not null
);
create table Categories (
	id integer primary key identity,
	cat_name nvarchar(30) not null
);
create table Relations (
	id integer primary key identity,
	prod_id integer not null,
	cat_id integer not null,
	foreign key (prod_id) references Products (id) on delete cascade,
	foreign key (cat_id) references Categories (id) on delete cascade
);

insert into Products (prod_name) values('prod1'), ('prod2'), ('prod3'), ('prod4');
insert into Categories (cat_name) values('cat1'), ('cat2'), ('cat3'), ('cat4');
insert into Relations (prod_id, cat_id) values(1, 1), (1, 3), (1, 4), (2, 2), (2, 4), (4, 1), (4, 2);