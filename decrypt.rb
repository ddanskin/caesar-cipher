# decrypt text with given key value
def decrypt(text, key)
    key = key.to_i
    text = text.downcase
    encoded = text.chars.map { |c| c.ord }
    decoded = encoded.map { |c| decode_char(c, key) }
    decoded = decoded.map { |c| c.chr }.join
    decoded
end

# decode individual character using key to unshift value
def decode_char(c, key)

    # if c is not a letter between a-z, then return c
    if c < 97 || c > 122
        return c
    end
    
    # if c - ket is less than 97, add 26 to bring it back into the a-z range
    if c - key < 97
        return c - key + 26
    else
        return c - key
    end
end
