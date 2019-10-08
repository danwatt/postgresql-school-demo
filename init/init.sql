create table school
(
id   serial  not null constraint school_pk primary key,
name varchar not null
);
create unique index school_name_uindex on school (name);


create table major
(
id   serial  not null constraint major_pk primary key,
name varchar not null
);

create unique index major_name_uindex on major (name);

create table school_major
(
school_id int not null constraint school_major_school_id_fk references school,
major_id  int not null constraint school_major_major_id_fk references major
);

create unique index school_major_major_id_school_id_uindex on school_major (major_id, school_id);

--https://github.com/fivethirtyeight/data/blob/master/college-majors/majors-list.csv