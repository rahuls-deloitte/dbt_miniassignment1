select p.Body 
from {{ref('users')}} u join {{ref('posts')}} p
on u.Id = p.OwnerUserId 
where u.DisplayName = 'alexandrul' and p.PostTypeId = 1