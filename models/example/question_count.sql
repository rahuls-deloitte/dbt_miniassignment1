select u.Id, u.DisplayName, u.Reputation, count(*) as num_questions
from {{ ref('users') }} u inner join {{ ref('posts') }} p
on u.id=p.OwnerUserId 
where p.PostTypeId = 1 and u.Reputation > 75000 
group by u.id, u.displayName, u.reputation
