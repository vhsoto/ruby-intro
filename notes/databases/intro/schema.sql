create table students (
   id serial primary key,
   name varchar(200) unique not null,
   age integer not null,
   cohort_id integer not null
);
