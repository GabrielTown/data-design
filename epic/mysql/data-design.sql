drop table if exists geeklist;
drop table if exists item;
drop table if exists profile;

create table profile(
	profileId binary(16) not null,
	profileUsername varchar(32) not null,
	profileActivationToken char(32),
	profileEmail varchar(128) not null,
	profileLocation VARCHAR(255),
	profileHash char(97) not null,
	unique(profileEmail),
	unique(profileUsername),
	index(profileEmail),
	primary key(profileId)
);

create table item(
	itemId binary(16) not null,
	itemProfileId binary(16) not null,
	itemContent varchar(40000) not null,
	itemDate datetime(6) not null,
	index(itemProfileId),
	foreign key(itemProfileId) references profile(profileId),
	primary key(itemId)
);

create table geeklist(
	geeklistId binary(16) not null,
	geeklistProfileId binary(16) not null,
	geeklistItemId binary(16) not null,
	geeklistContent varchar(40000) not null,
	geeklistDate datetime(6) not null,
	index(geeklistItemId),
	index(geeklistProfileId),
	foreign key(geeklistProfileId) references profile(profileId),
	foreign key(geeklistItemId) references item(itemId),
	primary key(geeklistId)
);

