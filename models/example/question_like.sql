select p.Body 
from {{ref('users')}} u, {{ref('posts')}} p 
where u.DisplayName like '%nau%' and p.PostTypeId = 1