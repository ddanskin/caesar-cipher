# encrypt text with given key value
def encrypt(text, key)
    key = key.to_i
    text = text.downcase
    message = text.chars.map { |c| c.ord }
    encoded = message.map { |c| encode_char(c, key) }
    encoded = encoded.map { |c| c.chr }.join
    encoded
end

def encode_char(c, key)
    if c + key > 122
        return c + key - 26
    else
        return c + key
    end
end
