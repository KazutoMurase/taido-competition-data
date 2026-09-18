create table zissen_man
(id integer not null,
left_player_id integer,
right_player_id integer,
next_left_id integer,
next_right_id integer,
left_player_flag integer,
left_retire integer,
right_retire integer,
foreign key (left_player_id) references players(zissen_man_player_id),
foreign key (right_player_id) references players(zissen_man_player_id),
primary key(id));

create table hokei_man
(id integer not null,
left_player_id integer,
right_player_id integer,
next_left_id integer,
next_right_id integer,
left_player_flag integer,
left_retire integer,
right_retire integer,
foreign key (left_player_id) references players(hokei_man_player_id),
foreign key (right_player_id) references players(hokei_man_player_id),
primary key(id));

create table zissen_woman
(id integer not null,
left_player_id integer,
right_player_id integer,
next_left_id integer,
next_right_id integer,
left_player_flag integer,
left_retire integer,
right_retire integer,
foreign key (left_player_id) references players(zissen_woman_player_id),
foreign key (right_player_id) references players(zissen_woman_player_id),
primary key(id));

create table hokei_woman
(id integer not null,
left_player_id integer,
right_player_id integer,
next_left_id integer,
next_right_id integer,
left_player_flag integer,
left_retire integer,
right_retire integer,
foreign key (left_player_id) references players(hokei_woman_player_id),
foreign key (right_player_id) references players(hokei_woman_player_id),
primary key(id));

\copy zissen_man from 'zissen_man.csv' csv header;
\copy hokei_man from 'hokei_man.csv' csv header;
\copy zissen_woman from 'zissen_woman.csv' csv header;
\copy hokei_woman from 'hokei_woman.csv' csv header;

create table dantai_zissen_man_groups
(id integer not null,
group_id integer not null,
name text not null,
foreign key (group_id) references groups(id),
primary key(id));

create table dantai_zissen_man
(id integer not null,
left_group_id integer,
right_group_id integer,
next_left_id integer,
next_right_id integer,
left_group_flag integer,
left_retire integer,
right_retire integer,
foreign key (left_group_id) references dantai_zissen_man_groups(id),
foreign key (right_group_id) references dantai_zissen_man_groups(id),
primary key(id));

\copy dantai_zissen_man_groups from 'dantai_zissen_man_groups.csv' csv header;
\copy dantai_zissen_man from 'dantai_zissen_man.csv' csv header;

create table dantai_hokei_man_groups
(id integer not null,
group_id integer not null,
name text not null,
foreign key (group_id) references groups(id),
primary key(id));

create table dantai_hokei_man
(id integer not null,
group_id integer,
round integer,
main_score real,
sub1_score real,
sub2_score real,
penalty real,
retire integer,
foreign key (group_id) references dantai_hokei_man_groups(id),
primary key(id));

\copy dantai_hokei_man_groups from 'dantai_hokei_man_groups.csv' csv header;
\copy dantai_hokei_man from 'dantai_hokei_man.csv' csv header;

create table tenkai_man_groups
(id integer not null,
group_id integer not null,
name text not null,
foreign key (group_id) references groups(id),
primary key(id));

create table tenkai_man
(id integer not null,
group_id integer,
round integer,
main_score real,
sub1_score real,
sub2_score real,
penalty real,
retire integer,
foreign key (group_id) references tenkai_man_groups(id),
primary key(id));

\copy tenkai_man_groups from 'tenkai_man_groups.csv' csv header;
\copy tenkai_man from 'tenkai_man.csv' csv header;

create table dantai_zissen_woman_groups
(id integer not null,
group_id integer not null,
name text not null,
foreign key (group_id) references groups(id),
primary key(id));

create table dantai_zissen_woman
(id integer not null,
left_group_id integer,
right_group_id integer,
next_left_id integer,
next_right_id integer,
left_group_flag integer,
left_retire integer,
right_retire integer,
foreign key (left_group_id) references dantai_zissen_woman_groups(id),
foreign key (right_group_id) references dantai_zissen_woman_groups(id),
primary key(id));

\copy dantai_zissen_woman_groups from 'dantai_zissen_woman_groups.csv' csv header;
\copy dantai_zissen_woman from 'dantai_zissen_woman.csv' csv header;

create table dantai_hokei_woman_groups
(id integer not null,
group_id integer not null,
name text not null,
foreign key (group_id) references groups(id),
primary key(id));

create table dantai_hokei_woman
(id integer not null,
group_id integer,
round integer,
main_score real,
sub1_score real,
sub2_score real,
penalty real,
retire integer,
foreign key (group_id) references dantai_hokei_woman_groups(id),
primary key(id));

\copy dantai_hokei_woman_groups from 'dantai_hokei_woman_groups.csv' csv header;
\copy dantai_hokei_woman from 'dantai_hokei_woman.csv' csv header;

create table tenkai_woman_groups
(id integer not null,
group_id integer not null,
name text not null,
foreign key (group_id) references groups(id),
primary key(id));

create table tenkai_woman
(id integer not null,
group_id integer,
round integer,
main_score real,
sub1_score real,
sub2_score real,
penalty real,
retire integer,
foreign key (group_id) references tenkai_woman_groups(id),
primary key(id));

\copy tenkai_woman_groups from 'tenkai_woman_groups.csv' csv header;
\copy tenkai_woman from 'tenkai_woman.csv' csv header;

create table dantai_hokei_newcommer_groups
(id integer not null,
group_id integer not null,
name text not null,
foreign key (group_id) references groups(id),
primary key(id));

create table dantai_hokei_newcommer
(id integer not null,
group_id integer,
round integer,
main_score real,
sub1_score real,
sub2_score real,
penalty real,
retire integer,
foreign key (group_id) references dantai_hokei_newcommer_groups(id),
primary key(id));

\copy dantai_hokei_newcommer_groups from 'dantai_hokei_newcommer_groups.csv' csv header;
\copy dantai_hokei_newcommer from 'dantai_hokei_newcommer.csv' csv header;

