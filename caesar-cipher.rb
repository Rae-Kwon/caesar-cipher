def caesar_cipher(string, shift = 1)
    alphabet = ("a".."z").to_a
    lower_case = Hash[alphabet.zip(alphabet.rotate(shift))]

    alphabet = ("A".."Z").to_a
    upper_case = Hash[alphabet.zip(alphabet.rotate(shift))]

    cipher = lower_case.merge(upper_case)

    result = string.chars.map { |char| cipher.fetch(char, char) }
    return result.join
end

def run_cipher
    puts "Enter a word or sentence: "
    string = gets.chomp

    puts "How many places would you like to shift the letters by? (Positive numbers shift letter left and negative numbers shift letters right!)"
    shift = gets.to_i
    
    p caesar_cipher(string, shift)
end

run_cipher()