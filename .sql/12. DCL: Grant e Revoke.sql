-- Extensão do que foi passado no Curso em Vídeo

-- Concede inserção na tabela
GRANT INSERT ON table_name TO <user>;
-- Concede todos os privilégios
GRANT ALL PRIVILEGES ON <table_name> TO <user>;
-- Revoca
REVOKE INSERT ON <table_name> FROM <user>;
REVOKE ALL PRIVILEGES ON <table_name> FROM <user>;
-- O Postgres não possui o DENY, porém pode ser totalmente sanado com o REVOKE 
