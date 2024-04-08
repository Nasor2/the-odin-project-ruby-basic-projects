
def caesar_cipher(string,shift)
  final_string =""

  #Going througth the string
  string.split("").each do |char|
    current_char = char.downcase.ord #getting the ASCII code of the current char

    #checking if the current char is a word
    if current_char >=97 && current_char<=122
      #wrap from z to a
      current_char +=shift
      unless current_char <123
        current_char-=26
      end
      current_char = current_char.chr

      #in case the current letter is uppercase
      if char == char.upcase
        current_char = current_char.upcase
      end

      final_string.concat(current_char)

    else
      final_string.concat(char)
    end
  end

  #output
  puts final_string
end
caesar_cipher("What a string!", 5)
