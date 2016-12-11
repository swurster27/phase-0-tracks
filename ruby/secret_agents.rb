#We will create an encrypted method that advances every letter in a string one letter forward.
#We can use .next command and the .index command  
# "abcdefg".next 


def encrypt(str)
index = 0
 while index < str.length
 encrypt_output = str[index].next
     if encrypt_output == "aa"
       encrypt_output = "a"
     end
  print encrypt_output
 index += 1
 end
end

def decrypt(str)
index=0
  while index < str.length
    output = (str[index].ord-1).chr
    print output.tr("`", "z")
    index += 1  
  end
end


#the decrypt(encrypt("swordfish")) functions as a math problem would function. First the operations inside the parentheses will be done then the operations on the outside will process.

p "hello agent, would you like to decrypt or encrypt?"

answer = gets.chomp 

p "please input password"

password = gets.chomp

if answer == "decrypt"
  puts decrypt(password)
  else
    puts encrypt(password)
end