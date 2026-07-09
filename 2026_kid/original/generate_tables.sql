create table junior_high_zissen_man
(id integer not null,
left_player_id integer,
right_player_id integer,
next_left_id integer,
next_right_id integer,
left_player_flag integer,
left_retire integer,
right_retire integer,
foreign key (left_player_id) references players(junior_high_zissen_man_player_id),
foreign key (right_player_id) references players(junior_high_zissen_man_player_id),
primary key(id));

create table higher_grades_zissen_man
(id integer not null,
left_player_id integer,
right_player_id integer,
next_left_id integer,
next_right_id integer,
left_player_flag integer,
left_retire integer,
right_retire integer,
foreign key (left_player_id) references players(higher_grades_zissen_man_player_id),
foreign key (right_player_id) references players(higher_grades_zissen_man_player_id),
primary key(id));

create table junior_high_zissen_woman
(id integer not null,
left_player_id integer,
right_player_id integer,
next_left_id integer,
next_right_id integer,
left_player_flag integer,
left_retire integer,
right_retire integer,
foreign key (left_player_id) references players(junior_high_zissen_woman_player_id),
foreign key (right_player_id) references players(junior_high_zissen_woman_player_id),
primary key(id));

create table higher_grades_zissen_woman
(id integer not null,
left_player_id integer,
right_player_id integer,
next_left_id integer,
next_right_id integer,
left_player_flag integer,
left_retire integer,
right_retire integer,
foreign key (left_player_id) references players(higher_grades_zissen_woman_player_id),
foreign key (right_player_id) references players(higher_grades_zissen_woman_player_id),
primary key(id));

create table junior_high_hokei_man
(id integer not null,
left_player_id integer,
right_player_id integer,
next_left_id integer,
next_right_id integer,
left_player_flag integer,
left_retire integer,
right_retire integer,
foreign key (left_player_id) references players(junior_high_hokei_man_player_id),
foreign key (right_player_id) references players(junior_high_hokei_man_player_id),
primary key(id));

create table higher_grades_hokei_man
(id integer not null,
left_player_id integer,
right_player_id integer,
next_left_id integer,
next_right_id integer,
left_player_flag integer,
left_retire integer,
right_retire integer,
foreign key (left_player_id) references players(higher_grades_hokei_man_player_id),
foreign key (right_player_id) references players(higher_grades_hokei_man_player_id),
primary key(id));

create table lower_grades_hokei_man
(id integer not null,
left_player_id integer,
right_player_id integer,
next_left_id integer,
next_right_id integer,
left_player_flag integer,
left_retire integer,
right_retire integer,
foreign key (left_player_id) references players(lower_grades_hokei_man_player_id),
foreign key (right_player_id) references players(lower_grades_hokei_man_player_id),
primary key(id));

create table junior_high_hokei_woman
(id integer not null,
left_player_id integer,
right_player_id integer,
next_left_id integer,
next_right_id integer,
left_player_flag integer,
left_retire integer,
right_retire integer,
foreign key (left_player_id) references players(junior_high_hokei_woman_player_id),
foreign key (right_player_id) references players(junior_high_hokei_woman_player_id),
primary key(id));

create table higher_grades_hokei_woman
(id integer not null,
left_player_id integer,
right_player_id integer,
next_left_id integer,
next_right_id integer,
left_player_flag integer,
left_retire integer,
right_retire integer,
foreign key (left_player_id) references players(higher_grades_hokei_woman_player_id),
foreign key (right_player_id) references players(higher_grades_hokei_woman_player_id),
primary key(id));

create table lower_grades_hokei_woman
(id integer not null,
left_player_id integer,
right_player_id integer,
next_left_id integer,
next_right_id integer,
left_player_flag integer,
left_retire integer,
right_retire integer,
foreign key (left_player_id) references players(lower_grades_hokei_woman_player_id),
foreign key (right_player_id) references players(lower_grades_hokei_woman_player_id),
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

\copy junior_high_zissen_man from 'junior_high_zissen_man.csv' csv header;
\copy higher_grades_zissen_man from 'higher_grades_zissen_man.csv' csv header;
\copy junior_high_zissen_woman from 'junior_high_zissen_woman.csv' csv header;
\copy higher_grades_zissen_woman from 'higher_grades_zissen_woman.csv' csv header;
\copy junior_high_hokei_man from 'junior_high_hokei_man.csv' csv header;
\copy higher_grades_hokei_man from 'higher_grades_hokei_man.csv' csv header;
\copy lower_grades_hokei_man from 'lower_grades_hokei_man.csv' csv header;
\copy junior_high_hokei_woman from 'junior_high_hokei_woman.csv' csv header;
\copy higher_grades_hokei_woman from 'higher_grades_hokei_woman.csv' csv header;
\copy lower_grades_hokei_woman from 'lower_grades_hokei_woman.csv' csv header;
\copy zissen_man from 'zissen_man.csv' csv header;
\copy hokei_man from 'hokei_man.csv' csv header;
\copy zissen_woman from 'zissen_woman.csv' csv header;
\copy hokei_woman from 'hokei_woman.csv' csv header;
\copy hokei_kyuui from 'hokei_kyuui.csv' csv header;
