require_relative 'encrypt'
require_relative 'decrypt'


def error_message
    puts "Enter text and key to encrypt/decrypt"
    puts "ruby caesar_cipher.rb encrypt hello 3"
end

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
