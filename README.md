This repository contains a dbt (Data Build Tool) project developed using Visual Studio Code. The project demonstrates end-to-end usage of dbt features such as models, snapshots, macros, seeds, and tests, along with GitHub integration.

Features Implemented
	•	Models
	•	Built modular SQL transformations with ref() to ensure dependency tracking.
	•	Snapshots
	•	Implemented incremental loading & historical tracking with snapshot strategies.
	•	Macros
	•	Created reusable SQL logic for parameterized queries.
	•	Seeds
	•	Added seed data for static lookup tables and testing.
	•	Tests
	•	Applied generic tests (not_null, unique, relationships)
	•	Added custom tests via SQL queries.
	•	GitHub Integration
	•	Project version-controlled with Git.
	•	CI/CD-ready for future automation.



 ##### Profiles.yml file structure

 your_project_name:
  target: dev
  outputs:
    dev:
      type: databricks
      method: token
      host: https://<your-databricks-instance>
      token: <your-new-token>
      catalog: hive_metastore
      schema: dbt_dev


### dbt command

dbt debug           # Test connection  
dbt run             # Run models  
dbt test            # Run tests  
dbt snapshot        # Apply snapshots  
dbt seed            # Load seed files  
dbt docs generate   # Build documentation site  
dbt docs serve      # View docs locally
dbt build                 # build the whole thing in single command
dbt build --target prod   # to CICD


