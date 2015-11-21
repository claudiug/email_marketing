endpoints

namespace: /v1/

1. templates
2. users
3. placeholders
 
GET users/:id -> return a user

PUT users/:id/ -> update user

POST users -> create user

---------

GET users/:id/templates -> return all templates for a given user

POST users/:id/templates -> create a new template

GET users/id:/placeholders -> all placeholders for an account

GET users/id:/templates/:id/placeholders  -> all placeholders for a given template



--------------

models

a user has_many templates
template belongs to user
a user has_many placeholders
placeholder belongs to user
a template has many placeholders
placeholder belongs to template
