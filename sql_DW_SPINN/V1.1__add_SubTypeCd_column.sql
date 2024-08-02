alter table DIM_POLICY add column SubTypeCd varchar(500) default '~' not null;
update DIM_POLICY
set SubTypeCd=h.SubTypeCd
from SPINN_DB.PRODCSE.BasicPolicy as h join DIM_POLICY d
on h.SystemId=d.policy_uniqueid;