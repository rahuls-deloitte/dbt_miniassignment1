

select Id,DisplayName,Reputation 
from {{ ref('users')}} 
order by Reputation 
desc limit 10