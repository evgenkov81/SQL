create schema netology

    create table netology.persons(
                                     name varchar not null,
                                     surname varchar not null ,
                                     age int not null ,
                                     phone_number varchar,
                                     city_of_living varchar,
                                     primary key (name,surname,age)
    );

insert into netology.persons (name, surname, age, phone_number, city_of_living)
VALUES ('Ivan', 'Ivanov', 20, '11111111111', 'Moscow'),
       ('Petr', 'Petrov', 28, '22222222222', 'St-Petersburg'),
       ('Vasiliy', 'Vasiliev', 29, '33333333333', 'Vladimir'),
       ('Sergey', 'Sergeev', 26, '44444444444', 'Moscow')


select name, surname from netology.persons
where city_of_living='Moscow'

select name, surname, age, phone_number, city_of_living from netology.persons
where age>27 order by age desc