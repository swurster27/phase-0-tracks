#RELEASE 0
#Write a method that takes an array of integers
arr = [1,2,3,4,5,6,7,8,9,10]

def search_array(array, indivual)
  index = 0
  while index < array.length
    if array[index] == indivual
      p index
    end
  index += 1
  end
end

#and an integer to search for
p search_array(arr, 2)
p search_array(arr, 21)

#The method should return the index of the item, or nil if the item is not present in the array


#RELEASE 1
#Fibonocci sequence
# Write a method where the argument determines how long the final fibanacci sequence array will be
#start with empty array
#a=0 ; insert a into beginning of array.
# a become b.
# add a and b and insert new value into sequence

def fib_method(n)
  fib_array  = []
  a = 0
  b = 1
  fib_array.push(a)
  n.times do
  c = a
  a = b
  b = c + b
  
  fib_array.push(a)
  end
  p fib_array
end
 
fib_method(10)



#RELEASE 2
#1. Bubble sort 
#2. Bubble sort essentially sorts the array from smallest to largest. It's relatively easy to grasp and understand
#   the code. Visualizing it while using an array with objects that are largest to smallest helped me grasp the concept
#   because it sorted them.
#3. While reading this algorithm, I feel some clarity. I understand what is going on line by line. In addition, if I don't
#   understand, I am determined to figure it out by googling it. I think that directly affects my ability to learn. At different
#   times this week, when I was staring at something for hours, tired and frustrating, I absolutely confirmed that those feelings
#   had a direct correlation with my ability to learn.


array = [1,4,34,46,7]

# To calculate how many times integers need to be compared, set a variable for the length of an array
# Until there is no longer two items to compare 
 #If the first variable of the array is greater than the variable next to it (+1)
   #swap the variables so that the larger of the two comes first
#End the the loop if there are no longer two integers that need to be swapped

def bubble_sort(array)
 n = array.length 
 loop do 
   swapped = false

   (n-1).times do |index| 
     if array[index] > array[index+1]
       array[index], array[index+1] = array[index+1], array[index]
       swapped = true
     end
   end

   break if not swapped 
 end
p array
end

bubble_sort(array)