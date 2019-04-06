-- Create Tables, Triggers and Views , and populate it with data
source create_DB.sql
source db_triggers.sql
source views.sql
source load_data.sql

-- Setup Roles
source roles/destinationAdmin.sql
source roles/groupAdmin.sql
source roles/residenceAdmin.sql
source roles/supervisorAdmin.sql
source roles/transportAdmin.sql
source roles/traveler.sql
