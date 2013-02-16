Bug Description:

With two devise models [User and Admin] User can not override find_first_by_auth_conditions(conditions)
if the request_keys option is set in the user model (or in devise.rb)


This bug ONLY happens when there two devise models in the application.


To see the difference.

```bash
rake db:create db:migrate
rspec
```


The test should fail


if in app/models/user.rb, you commment out line 
reset_password_keys:[:email, :subdomain],
the test passes!
