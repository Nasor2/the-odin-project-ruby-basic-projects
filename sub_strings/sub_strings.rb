def substrings(string, dictionary)
  #Creating the hash to save the word matches
  hash = {}

  #Converting to array of the words in downcase and going throught it
  string.downcase.split(" ").each do |word|

    #going throught the dictionry array
    dictionary.each do |dictionary_word|

      #Verify if one dictionary substring word matches into the text word
      if /#{dictionary_word}/.match(word)

        unless hash.include?(dictionary_word)#Check the hash has that word, otherwise fill it in
          hash[dictionary_word]=1
        else
          hash[dictionary_word]+=1
        end
      end

    end

  end

  #output
  puts hash
end
#Case example
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
