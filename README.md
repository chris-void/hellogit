## This is a file to make sure hellogit will be working correctly on your computer 

*Before everything I personally strongly recommand you to use Ubuntu 12.04 to do the following things, but if you already have another version of linux, it is all fine and I can be sure that you can figure out which part of the script hellogit.sh need to be changed.*

**PS Strongly recommand the Pro Git book, it's quite useful**

First of all make sure that you have regist on the **github.com** and remember you name on github, then run:

```code
cd ~
ls -a
```


**if** you have found the .ssh dir:

```code
cd .ssh
gedit id_rsa.pub
```

copy all the things in it to (github.com/your-name) >> "Account settings" >> "SSH Keys" >> "Add SSH Key" >> Key (what inside "" means a button)  


**else** run:
```code
ssh-keygen -t rsa -C "youremail@example.com"
```
then you can do the following steps beneath **if**
  

