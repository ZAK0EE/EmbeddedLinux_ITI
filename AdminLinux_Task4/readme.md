# Task4 (Section 2)
## 1. Create a supplementary (Secondary) group called pgroup with group ID of 30000
![image](https://github.com/ZAK0EE/EmbeddedLinux_ITI/assets/82421473/839a59f1-e8a4-447c-894f-651b640683e0)

## 2. Lock any user created account so he can't log in
[StackOverFLow](https://askubuntu.com/questions/282806/how-to-enable-or-disable-a-user)

       -L, --lock
           Lock a user's password. This puts a '!' in front of the encrypted password,
           effectively disabling the password. You can't use this option with -p or -U.

           Note: if you wish to lock the account (not only access with a password), you should
           also set the EXPIRE_DATE to 1.
![image](https://github.com/ZAK0EE/EmbeddedLinux_ITI/assets/82421473/ebe365af-526b-4dd1-8bce-ccb1f2e2a606)

## 3. Delete user account
![image](https://github.com/ZAK0EE/EmbeddedLinux_ITI/assets/82421473/10115cf3-f98f-4a07-83c2-e5f01b309fe4)

## 4. Delete group account
![image](https://github.com/ZAK0EE/EmbeddedLinux_ITI/assets/82421473/2ce539c9-c238-4889-b459-d7ad957a1677)

## 5. State the difference between adduser and useradd with example shown.
### useradd 
useradd is a low level utility for adding users. On Debian, administrators should usually use adduser(8) instead.

![image](https://github.com/ZAK0EE/EmbeddedLinux_ITI/assets/82421473/ce9fb186-b1a7-4d99-95eb-d67eda2b7b3c)

### adduser 
adduser  and  addgroup add users and groups to the system according to command line options and configuration information in ```/etc/adduser.conf```.  They
       are friendlier front ends to the low level tools like useradd, groupadd and usermod programs, by default choosing Debian policy  conformant  UID  and
       GID  values,  creating a home directory with skeletal configuration, running a custom script, and other features.

![image](https://github.com/ZAK0EE/EmbeddedLinux_ITI/assets/82421473/d8908bb2-4b3a-4e86-90aa-336e8414ac05)


      




