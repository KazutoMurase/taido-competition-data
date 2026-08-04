create table hokei_newcommer
(id integer not null,
left_player_id integer,
right_player_id integer,
next_left_id integer,
next_right_id integer,
left_player_flag integer,
left_retire integer,
right_retire integer,
foreign key (left_player_id) references players(hokei_newcommer_player_id),
foreign key (right_player_id) references players(hokei_newcommer_player_id),
primary key(id));

create table hokei_kyuui
(id integer not null,
left_player_id integer,
right_player_id integer,
next_left_id integer,
next_right_id integer,
left_player_flag integer,
left_retire integer,
right_retire integer,
foreign key (left_player_id) references players(hokei_kyuui_player_id),
foreign key (right_player_id) references players(hokei_kyuui_player_id),
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

create table hokei_mei_kyuui_newcommer
(id integer not null,
left_player_id integer,
right_player_id integer,
next_left_id integer,
next_right_id integer,
left_player_flag integer,
left_retire integer,
right_retire integer,
foreign key (left_player_id) references players(hokei_mei_kyuui_newcommer_player_id),
foreign key (right_player_id) references players(hokei_mei_kyuui_newcommer_player_id),
primary key(id));

create table hokei_mei
(id integer not null,
left_player_id integer,
right_player_id integer,
next_left_id integer,
next_right_id integer,
left_player_flag integer,
left_retire integer,
right_retire integer,
foreign key (left_player_id) references players(hokei_mei_player_id),
foreign key (right_player_id) references players(hokei_mei_player_id),
primary key(id));

create table hokei_sei
(id integer not null,
left_player_id integer,
right_player_id integer,
next_left_id integer,
next_right_id integer,
left_player_flag integer,
left_retire integer,
right_retire integer,
foreign key (left_player_id) references players(hokei_sei_player_id),
foreign key (right_player_id) references players(hokei_sei_player_id),
primary key(id));

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

create table zissen_sonen_man
(id integer not null,
left_player_id integer,
right_player_id integer,
next_left_id integer,
next_right_id integer,
left_player_flag integer,
left_retire integer,
right_retire integer,
foreign key (left_player_id) references players(zissen_sonen_man_player_id),
foreign key (right_player_id) references players(zissen_sonen_man_player_id),
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

create table zissen_sonen_woman
(id integer not null,
left_player_id integer,
right_player_id integer,
next_left_id integer,
next_right_id integer,
left_player_flag integer,
left_retire integer,
right_retire integer,
foreign key (left_player_id) references players(zissen_sonen_woman_player_id),
foreign key (right_player_id) references players(zissen_sonen_woman_player_id),
primary key(id));

\copy hokei_newcommer from 'hokei_newcommer.csv' csv header;
\copy hokei_kyuui from 'hokei_kyuui.csv' csv header;
\copy hokei_man from 'hokei_man.csv' csv header;
\copy hokei_woman from 'hokei_woman.csv' csv header;
\copy hokei_mei_kyuui_newcommer from 'hokei_mei_kyuui_newcommer.csv' csv header;
\copy hokei_mei from 'hokei_mei.csv' csv header;
\copy hokei_sei from 'hokei_sei.csv' csv header;
\copy zissen_man from 'zissen_man.csv' csv header;
\copy zissen_sonen_man from 'zissen_sonen_man.csv' csv header;
\copy zissen_woman from 'zissen_woman.csv' csv header;
\copy zissen_sonen_woman from 'zissen_sonen_woman.csv' csv header;

create table dantai_hokei_groups
(id integer not null,
group_id integer not null,
name text not null,
foreign key (group_id) references groups(id),
primary key(id));

create table dantai_hokei
(id integer not null,
group_id integer,
round integer,
main_score real,
sub1_score real,
sub2_score real,
penalty real,
retire integer,
foreign key (group_id) references dantai_hokei_groups(id),
primary key(id));

\copy dantai_hokei_groups from 'dantai_hokei_groups.csv' csv header;
\copy dantai_hokei from 'dantai_hokei.csv' csv header;

create table tenkai_groups
(id integer not null,
group_id integer not null,
name text not null,
foreign key (group_id) references groups(id),
primary key(id));

create table tenkai
(id integer not null,
group_id integer,
round integer,
main_score real,
sub1_score real,
sub2_score real,
sub3_score real,
sub4_score real,
sub5_score real,
elapsed_time real,
penalty real,
start_penalty real,
retire integer,
foreign key (group_id) references tenkai_groups(id),
primary key(id));

\copy tenkai_groups from 'tenkai_groups.csv' csv header;
\copy tenkai from 'tenkai.csv' csv header;

