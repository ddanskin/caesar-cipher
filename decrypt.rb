# decrypt text with given key value
def decrypt(text, key)
    key = key.to_i
    text = text.downcase
    encoded = text.chars.map { |c| c.ord }
    decoded = encoded.map { |c| decode_char(c, key) }
    decoded = decoded.map { |c| c.chr }.join
    decoded
end

def decode_char(c, key)
    if c - key < 97
        return c - key + 26
    else
        return c - key
    end
end
