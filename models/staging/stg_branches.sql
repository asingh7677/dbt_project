with branches as (
    select 
        BranchID,BranchName,Address,PhoneNumber,
    CASE
        WHEN ManagerID IS NULL THEN 0  -- Replace NULL with a default value
        ELSE ManagerID
    END AS ManagerID
    from 
        {{ source("dbo","branches") }}
)

SELECT *
from branches