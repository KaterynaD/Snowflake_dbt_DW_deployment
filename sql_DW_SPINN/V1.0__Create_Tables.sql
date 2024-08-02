CREATE OR REPLACE TABLE  DIM_POLICY
(
     policy_id VARCHAR(100) not null
	,policy_uniqueid VARCHAR(100) not null
	,policynumber VARCHAR(50) not null
	,effectivedate DATE not null
	,expirationdate DATE not null
    ,PRIMARY KEY (policy_id)
);