update DEV_DB.DW_SPINN.DIM_POLICY
set SubTypeCd=h.SubTypeCd
from SPINN_DB.PRODCSE.BasicPolicy as h join DEV_DB.DW_SPINN.DIM_POLICY d
on h.SystemId=d.policy_uniqueid;

