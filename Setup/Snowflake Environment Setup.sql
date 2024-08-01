
CREATE OR REPLACE DATABASE SPINN_DB;
CREATE OR REPLACE SCHEMA PRODCSE;

CREATE OR REPLACE TABLE SPINN_DB.PRODCSE.BasicPolicy
(
	 systemid VARCHAR(100)
	,cmmcontainer VARCHAR(10)
	,policynumber VARCHAR(50)
	,effectivedate DATE
	,expirationdate DATE
	,subtypecd VARCHAR(255)
    ,altsubtypecd VARCHAR(255)
);

INSERT INTO SPINN_DB.PRODCSE.BasicPolicy (systemid, cmmcontainer, policynumber, effectivedate, expirationdate, subtypecd, altsubtypecd) VALUES(1000319, 'Policy', 'CAF1101614', '2016-02-25', '2016-02-25', 'DF3','DF3');
INSERT INTO SPINN_DB.PRODCSE.BasicPolicy (systemid, cmmcontainer, policynumber, effectivedate, expirationdate, subtypecd, altsubtypecd) VALUES(1000105, 'Policy', 'CAF1013023', '2016-02-23', '2016-02-23', 'DF3','DF3');
INSERT INTO SPINN_DB.PRODCSE.BasicPolicy (systemid, cmmcontainer, policynumber, effectivedate, expirationdate, subtypecd, altsubtypecd) VALUES(100002, 'Policy', 'CAF0646773', '2011-03-06', '2011-03-06', 'DF3','DF3');
INSERT INTO SPINN_DB.PRODCSE.BasicPolicy (systemid, cmmcontainer, policynumber, effectivedate, expirationdate, subtypecd, altsubtypecd) VALUES(1000037, 'Policy', 'CAH0735838', '2016-02-24', '2016-02-24', 'HO4','HO4');
INSERT INTO SPINN_DB.PRODCSE.BasicPolicy (systemid, cmmcontainer, policynumber, effectivedate, expirationdate, subtypecd, altsubtypecd) VALUES(1000146, 'Policy', 'NVA0889636', '2016-02-08', '2016-02-08', 'PA','PA');
INSERT INTO SPINN_DB.PRODCSE.BasicPolicy (systemid, cmmcontainer, policynumber, effectivedate, expirationdate, subtypecd, altsubtypecd) VALUES(1000073, 'Policy', 'AZH1080942', '2016-02-24', '2016-02-24', 'HO6','HO6');
INSERT INTO SPINN_DB.PRODCSE.BasicPolicy (systemid, cmmcontainer, policynumber, effectivedate, expirationdate, subtypecd, altsubtypecd) VALUES(1000219, 'Policy', 'CAF1120202', '2016-01-17', '2016-01-17', 'DF6','DF6');
INSERT INTO SPINN_DB.PRODCSE.BasicPolicy (systemid, cmmcontainer, policynumber, effectivedate, expirationdate, subtypecd, altsubtypecd) VALUES(1000299, 'Policy', 'CAH0531286', '2016-02-25', '2016-02-25', 'HO3','HO3');
INSERT INTO SPINN_DB.PRODCSE.BasicPolicy (systemid, cmmcontainer, policynumber, effectivedate, expirationdate, subtypecd, altsubtypecd) VALUES(1000313, 'Policy', 'AZA1099676', '2016-02-10', '2016-02-10', 'PA', 'PA');
INSERT INTO SPINN_DB.PRODCSE.BasicPolicy (systemid, cmmcontainer, policynumber, effectivedate, expirationdate, subtypecd, altsubtypecd) VALUES(1000310, 'Policy', 'CAH7000225', '2016-02-25', '2016-02-25', 'HO3', 'HO3');
CREATE OR REPLACE DATABASE DEV_DB;
CREATE OR REPLACE SCHEMA DW_SPINN;

CREATE OR REPLACE DATABASE QA_DB;
CREATE OR REPLACE SCHEMA DW_SPINN;

CREATE OR REPLACE DATABASE PROD_DB;
CREATE OR REPLACE SCHEMA DW_SPINN;


CREATE WAREHOUSE DEVOPS WITH WAREHOUSE_SIZE = 'XSMALL' WAREHOUSE_TYPE = 'STANDARD' AUTO_SUSPEND = 60 AUTO_RESUME = TRUE;