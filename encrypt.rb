# encrypt text with given key value
def encrypt(text, key)
    key = key.to_i
    text = text.downcase
    message = text.chars.map { |c| c.ord }
    encoded = message.map { |c| encode_char(c, key) }
    encoded = encoded.map { |c| c.chr }.join
    encoded
end

# encodes individual character using the key to shift
def encode_char(c, key)

    # if c is not a letter a-z, return c
    if c < 97 || c > 122
        return c
    end

    # if c + key is greate than 122, subtract 26 to bring it back to a-z range
    if c + key > 122
        return c + key - 26
    else
        return c + key
    end
end
