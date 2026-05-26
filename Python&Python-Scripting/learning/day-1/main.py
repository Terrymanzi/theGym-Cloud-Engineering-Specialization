# this is my first python program
print("I like pizaa!")
print("it is really good!")

# variables (basic types: integer, strings, boolean and float)
print("######################################################")

full_name= "terry manzi"
age = 20
gpa= 4.5
is_student = True

# Arithmetics in Python: 
print("######################################################")
#       Addition:               + 
#       Subtraction:            -
#       Multplication:          *
#       Addition:               +
#       Division:               /  (returns float)
#       Integer division:      // (returns an integer)
#       Reminder:               %

friends = 1
friends += 4
friends *= 5
friends //= 6

print(f"Number of friends: {friends}")

# Typecasting is the process of converting a variable from one data type to another using: 
#               int(), str(), float(), bool()
# We can check the type of a variable using the type() function
print("######################################################")

name="prince"
age=22
gpa=3.4
is_student=False

gpa = int(gpa)
print(type(gpa))


# User-Input
#   we can use the input() method to capture the user's input
print("######################################################")

question = input("Enter your question: ")
print(question)


# If Control Statements
print(f"Hello, my name is: {name}")
print(f"I'm {age} years old")
print(f"My current gpa is: {gpa}")

if is_student:
    print("I'm a student")
else:
    print("I'm not a student")

if age >= 18:
    print("You are an adult")
elif age <= 18:
    print("You are a minor") 

elif age == 0:
    print("You are not yet! born!")

print("######################################################")
print("######################################################")
print("######################################################")
print("######################################################")