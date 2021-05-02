-- create user
create user padawan password 'padawan12345';
alter role padawan with superuser;
grant all on database tutorial to padawan;
grant pg_read_server_files to padawan ;
grant pg_write_server_files to padawan ;
