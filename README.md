## Table of Contents (for files)
*This doc provides info about the contents of each file*

**script_business_rules_udfs.sql**
--> contains the udfs for our business rules

**script_computed_columns.sql**
--> contains the udfs for our computed columns

**script_create_tables_populate_static.sql**
--> contains all "CREATE TABLE" statements and the "INSERT" statements for static tables

**script_populate_transactional_tblCHECK_part1.sql**
--> contains the first set of "EXEC" command for populating tblCHECK

**script_populate_transactional_tblCHECK_part2.sql**
--> contains the second set of "EXEC" command for populating tblCHECK

**script_populate_transactional.sql**
--> contains all other "EXEC" commands for populating all transactional tables except tblCHECK

**script_stored_procedures.sql**
--> contains the sql statements for our stored procedures

**script_utils.sql**
--> contains the sql statements to drop our database and back it up (w/ and w/o differential)

**script_views.sql**
--> contains the sql statements for our views

**script_visualizations**
--> contains the sql statement to generate the query for our tableau visualization

---

*Below are details regarding transactions*

**populate_transactional.xlsx**
--> contains the underlying data for select tables for transactional table data generation
--> note: random dates were generated via NEWID and adding it to a given date, exact command is specified in "\*populate_transactional\*.sql" scripts

**populate_transactional.ipynb**
--> contains the jupyter notebook / python code responsible for synthesizing / generating the existing database data into a large set of new artificial data
