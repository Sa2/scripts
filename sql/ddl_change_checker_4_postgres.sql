/* DDL変更を検知するトリガー */
/* postgres9.3で使用 */
/* ddl_command_start, ddl_command_end のevent でチャッチできるらしい */

drop event trigger ddl_catch;
drop function mail();

create or replace function mail() returns event_trigger AS $$
declare statement text;
begin

    statement := E'copy (select 1) to program \'echo ttttt | mail -s testing example@mail.co.jp\'';
   execute statement;
    statement := E'copy (select 1) to program \'pg_dump --schema-only db-project > /tmp/sss.sql\'';
     execute statement;
end;
$$ language plpgsql;
CREATE EVENT TRIGGER DDL_CATCH ON ddl_command_start EXECUTE PROCEDURE mail();
