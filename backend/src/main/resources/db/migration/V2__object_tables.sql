create table if not exists gyms(
    id serial not null primary key,
    gym_name varchar(255) not null,
    date_added timestamp default now(),
    constraint ux_gyms_gym_name unique(gym_name)
);

create table if not exists users_gyms(
    user_id int not null,
    gym_id int not null,
    date_added timestamp default now() not null,
    constraint fk_users_gyms_user_id foreign key(user_id) references users(id),
    constraint fk_users_gyms_gym_id foreign key(gym_id) references gyms(id)
);
create index if not exists ix_users_gyms_user_id on users_gyms(user_id);
create index if not exists ix_users_gyms_gym_id on users_gyms(gym_id);

create table if not exists gym_locations(
    id serial not null primary key,
    gym_name varchar(255) not null,
    gym_id int8 not null,
    address varchar(255) not null,
    date_added timestamp default now(),
    constraint ux_gyms_locations_gym_name unique(gym_name, gym_id),
    constraint fk_gym_locations_gym_id foreign key(gym_id) references gyms(id)
);
create index if not exists ix_gym_locations_gym_id on gym_locations(gym_id);
