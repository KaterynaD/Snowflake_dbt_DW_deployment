This project demonstrates how I built CI/CD pipeline to handle dev, QA and PROD environments to develop, test, deploy and production run of Snowflake schema changes and correspondent DBT models adjustment.
The diagram illustrates the solution architecture. I use GitHub Actions to run SnowSQL (environment setup), FlyWay (schema changes deployment) and DBT to transform and test data. 
Snowflake credentials are stored in GitHub Secrets.

![image](https://github.com/user-attachments/assets/f3a7e010-50be-49d1-85ef-d927800786c8)


1.	Set up Snowflake environment if needed (source database, schema and tables, dev, QA and PROD database and schemas). 
Setup_Environment GitHub Action can be used optionally. It asks Snowflake credentials and run Setup/Snowflake_Environment_Setup.sql via SnowSQL.
The script creates SPINN_DB database, PRODCSE schema and BasicPolicy table with 10 dummy records, assuming in a real word, a tool like FiveTran moves data into Snowflake. 
Then 3 DW empty environments are created as well as DevOps XSmall warehouse.
2.	Develop locally SQL scripts and configuration files. Commit to dev and Push to GitHub.
3.	Merge with QA and Push
git checkout QA
git pull
git merge --no-ff dev -m "Deploy from dev to QA"
git push

4.	QA_Deployment_and_Test_PROD_Deployment GitHub Action starts run on Push to QA:
a.	Installs FlyWay and deploys in QA Snowflake environment
b.	Installs DBT, performs QA DBT run and test. 
c.	Performs Merge/Push to PROD if previous steps succeeded.
d.	Deploys in PROD Snowflake environment.
5.	Prod_dbt_run GitHub Action runs according to a scheduler or manually using deployed to PROD DBT scripts.
