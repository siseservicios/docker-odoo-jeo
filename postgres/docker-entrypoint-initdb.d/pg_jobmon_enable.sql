CREATE SCHEMA IF NOT EXISTS jobmon;
CREATE EXTENSION IF NOT EXISTS pg_jobmon SCHEMA jobmon;
CREATE SCHEMA IF NOT EXISTS dblink;
CREATE EXTENSION IF NOT EXISTS dblink SCHEMA dblink;
INSERT INTO jobmon.dblink_mapping_jobmon (username, pwd) VALUES ('odoo', 'odoo');
GRANT USAGE ON SCHEMA jobmon to odoo;
GRANT USAGE ON SCHEMA dblink to odoo;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA jobmon TO odoo;
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA jobmon TO odoo;
GRANT ALL ON ALL SEQUENSES IN SCHEMA jobmon TO odoo;