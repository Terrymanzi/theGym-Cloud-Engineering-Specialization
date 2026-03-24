#!/bin/bash
# loops in bash shell
default loop:
###################################
Number: 1
Number: 2
Number: 3
second loop:
###################################
1
2
3
4
5
increment loop
###################################
1
3
5
7
9
looping in files:
###################################
file name: 1st-script.sh
file name: conditional-script.sh
file name: loop-script.sh
file name: math-script.sh
file name: simple-authentication-script.sh
file name: user-input.sh
file name: variables.sh
C-Style loop in bash shell
###################################
count: 1
count: 2
count: 3
count: 4
count: 5
count: 6
count: 7
count: 8
count: 9
count: 10
while condition loop
###################################
ALLOWED ORDERS: 10
order something!
Remaining: 9 orders
order something!
Remaining: 8 orders
order something!
Remaining: 7 orders
order something!
Remaining: 6 orders
order something!
Remaining: 5 orders
order something!
Remaining: 4 orders
order something!
Remaining: 3 orders
order something!
Remaining: 2 orders
order something!
Remaining: 1 orders
order something!
Remaining: 0 orders
root@200ff6e48e8c:/bash-shell-scripting/learning# cat loop-script.sh 
#!/bin/bash
# loops in bash shell

# default loop
echo "default loop:"
echo "###################################"
for i in 1 2 3
do
        echo "Number: $i"
done

# looping in range 1 to 5
echo "second loop:"
echo "###################################"
root@200ff6e48e8c:/bash-shell-scripting/learning# cat loop-script.sh 
#!/bin/bash
# loops in bash shell

# default loop
echo "default loop:"
echo "###################################"
for i in 1 2 3
do
        echo "Number: $i"
done

# looping in range 1 to 5
echo "second loop:"
echo "###################################"
for j in {1..5}
root@200ff6e48e8c:/bash-shell-scripting/learning# nano loop-script.sh 
root@200ff6e48e8c:/bash-shell-scripting/learning# cat loop-script.sh 
#!/bin/bash
# loops in bash shell

# default loop
echo "default loop:"
echo "###################################"
for i in 1 2 3
do
        echo "Number: $i"
done

# looping in range 1 to 5
echo "second loop:"
echo "###################################"
root@200ff6e48e8c:/bash-shell-scripting/learning# cat loop-script.sh 
#!/bin/bash
# loops in bash shell

# default loop
echo "default loop:"
echo "###################################"
for i in 1 2 3
do
        echo "Number: $i"
done

# looping in range 1 to 5
echo "second loop:"
echo "###################################"
for j in {1..5}
do
        echo "$j"
done

# step 2 increment
echo "increment loop"
echo "###################################"
for k in {1..10..2}
do
        echo "$k"
done

# looping through files
echo "looping in files:"
echo "###################################"
for file in *.sh
do
        echo "file name: $file"
done

# C-Style loop
echo "C-Style loop in bash shell"
echo "###################################"
for ((n=1; n <=10; n++))
do
echo "count: $n"
done

# while loop
echo "while condition loop"
echo "###################################"
spent=1
allowed=10
echo "ALLOWED ORDERS: $allowed"
while [ $spent -le $allowed ]
do
        echo "order something!"
        echo "Remaining: $(($allowed-$spent)) orders"
        ((spent++))
done