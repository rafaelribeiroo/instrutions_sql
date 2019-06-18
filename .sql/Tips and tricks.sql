-- Mesmo que você apague muitos registros da sua tabela (delete/truncate), não
-- fará a menor diferença no espaço de armazenamento que está sendo utilizado,
-- pois a maioria dos BD não excluem realmente, mas deixa as tuplas como
-- inúteis, para resolver esse "problema", o Postgres nos disponibiliza...

-- Ver quanto espaço está em utilização no DB
SELECT pg_size_pretty( pg_database_size('<name_db>') );
-- Ver quanto armazenamento estou usando na tabela
SELECT pg_size_pretty( pg_total_relation_size('<table_name>') );
VACUUM(FULL, ANALYZE, VERBOSE) <table_name>(column);
