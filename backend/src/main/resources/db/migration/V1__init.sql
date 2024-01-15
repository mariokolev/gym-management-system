
create table if not exists roles(
	id serial not null primary key,
	role_name varchar(255) not null,
	inherit_role_id integer null,
	constraint ux_roles_role_name unique(role_name),
	constraint fk_roles_inherit_role_id foreign key (inherit_role_id) references roles(id)
);
create index if not exists ix_roles_inherit_role_id on roles(inherit_role_id);

create table if not exists permissions(
	id serial not null primary key,
	permission_name varchar(255) not null,
	constraint ux_permissions_permission_name unique(permission_name)
);

create table if not exists roles_permissions(
	role_id int8 not null,
	permission_id int8 not null,
	constraint fk_roles_permissions_role_id foreign key(role_id) references roles(id),
	constraint fk_roles_permissions_permission_id foreign key(permission_id) references permissions(id)
);
create index if not exists ix_roles_permissions_role_id on roles_permissions(role_id);
create index if not exists ix_roles_permissions_permission_id on roles_permissions(permission_id);

create table users(
	id bigserial not null primary key,
	email varchar(320) not null,
	password varchar(255) not null,
    first_name varchar(255),
    last_name varchar(255),
	role_id int2 not null,
	active bool default true,
    created_ts timestamp not null default now(),
    updated_ts timestamp not null default now(),
    created_by varchar(255) not null default 'system',
    updated_by varchar(255) not null default 'system',
	constraint ux_users_email unique(email),
	constraint fk_users_role_id foreign key(role_id) references roles(id)
);
create index ix_users_role_id on users(role_id);

