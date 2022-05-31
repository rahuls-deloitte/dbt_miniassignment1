select Name, count(UserId) as cnt
from {{ ref('badges') }}
group by Name 
order by cnt desc limit 10