require_relative 'encrypt'
require_relative 'decrypt'

# print error message to screen with example of how to run program
def error_message
    puts "Enter text and key to encrypt/decrypt"
    puts "ruby caesar_cipher.rb encrypt hello 3"
end

# if user gives wrong number of arguments or incorrect argument
# give them an error message, otherwise use the arguments to
# encrypt or decrypt the given message with the given key
if ARGV.length != 3
    error_message
else
    if ARGV[0] == 'encrypt'
        puts encrypt(ARGV[1],ARGV[2])
    elsif ARGV[0] == 'decrypt'
        puts decrypt(ARGV[1],ARGV[2])
    else
        error_message
    end 
end
