create or replace function delempuser() returns trigger
language plpgsql
as $$
begin
delete from userinfo where uid='admin' or uid='ADMIN';
return NULL;
end;
$$;



create trigger trigger_delempuser
after insert on userinfo
execute procedure delempuser();