## createAdminUserSW6.sh 
------

### Info 
Tired of creating the admin users by hand in the admin area?<br>
Now use the Script createAdminUserSW6.sh :-) <br>
you can find the script in the readme/attachment directory<br>

------

### Settings
Enter your email company address here for all admin users
```
mail="@example.com"
```
Enter the standard password for all admin users here
```
password="demo"
```
insert the first and last name here
```
cat > adminUserList.$$ <<EOF
firstName lastName
firstName lastName
EOF
```
------

### Use the Script
Now copy this shell script to the server in the webroot directory<br>
log in via ssh and switch to the directory<br>
Run the script<br>
```bash -s < createAdminUserSW6.sh``` <br>
now all users from the list are created as admin users

------

## be sure to delete the script from webroot after using

