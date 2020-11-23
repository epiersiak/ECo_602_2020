# eco 602 week 1 datacamp intro to r assignment

# create a variable a with the text of your first name
 a <- ('Emily')

# create a variable that contains the number 45.6
 b1 = 45.6
 
# create a variable b2 that contains the text "45.6"
 b2 = "45.6"

# create a variable c that contains the sequence of integers from 0 to 3
 c <- c(0:3)
 
 class(a)

 class(b1) 

 class(b2) 

 class(c) 

 b1+b2

 b1+c 

  
# create a vector called v1 that contains a sequence of integers from -2 to 2
 v1 = c(-2:2)
 
# use v1 to create a new vector called v2 whose elements are the elements of v1
 # multiplied by 3
 v2 = 3*v1

#calculate the sum of all elements in v2 
 sum(v2)
 
 
#create a list, named my_list_1 with the following 3 elements: 5.2, "five point two", and vector 0:5
 my_list_1 = list(two = 5.2, one = "five point two", three = 0:5)
 
 
#subset the third element in my_list_1
 my_list_1[3]

# subset the element with the name "one"
 my_list_1["one"]
 
 
# run the following code to build a vector called "my_vec"
 my_vec = rep(1:3, 5)
my_vec 

#use the logcal equality test operator == to create a new vector, my_bool_vec, of boolean values from my_vec
# should have the same length as my_vec
# my_bool_vec should have TRUE values in the positions where my_vec has values of 3

my_bool_vec = ifelse(my_vec ==3, TRUE, FALSE)

# use my_bool_vec to retrieve all of the elements of my_vec that have a value of 3
my_vec[my_bool_vec]
