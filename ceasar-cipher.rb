def cipher(text, shift)
    text_arr = text.split('')
    shifted_text_arr = text_arr.map do |char|
        ascii = char.ord
        if (ascii < 65 || (ascii > 90 && ascii < 97) || ascii > 122)
            return ascii
        end
        ascii += shift
        if (ascii > 122 || (ascii > 90 && ascii < 97))
            ascii -= 26
        end
        return ascii.chr
    end
    shifted_text = shifted_text_arr.join