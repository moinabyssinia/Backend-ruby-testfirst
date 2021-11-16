#write your code here

def translate(word)
    # define vowels
    vowel = ['a', 'e', 'i', 'o', 'u']
    
    # convert word to array
    word = word.split()

    # new array to hold new words
    new_word = []

    word.each do |item|
        
        vowel_char_ind = []
        # isSinglePhoneme = false

        # starts with vowel?
        if vowel.include? item[0] 
            item = item + "ay"
        elsif item[0..1] == "qu"
            item = item[2..-1] + item[0..1] + "ay"
        else
            item.each_char do |char|
                if (vowel.include? char) and not ((char == "u") and (item[item.index(char) - 1] = "q"))
                    vowel_char_ind.push(item.index(char))

                end
            end
            
            item = item[vowel_char_ind[0]..-1] + item[0..vowel_char_ind[0] - 1] + "ay"

        end

        new_word.push(item)

    end

   new_word.join(" ")
end
