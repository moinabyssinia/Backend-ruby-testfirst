#write your code here
def echo(message)
    message
end

def shout(message)
    message.upcase
end

def repeat(message, times = 2)
    repeat_message = []
    repeat_times = times.to_i

    repeat_times.times do
        repeat_message.push(message)
    end

    # return the pushed message from the array
    repeat_message.join(" ")
end

def start_of_word(word, first_x_letter)
    if first_x_letter.to_i > 0
        word[0..first_x_letter.to_i-1]
    else
        "please provide a positive integer"
    end
end


def first_word(message)
    message.split(" ")[0]
end

def titleize(message)
    small_words = ["was", "is", "are", "to", "the", "over", "and", "but", "of"]
    new_message = []
    message_array = message.split(" ")
    count = 0 # keep track of multiple small words

    message_array.each do |word|
        if not small_words.include? word
            # get the first letter capitalized 
            word = word[0].upcase + word[1..-1]
            new_message.push(word)
            count += 1

        elsif (count == 0) and (small_words.include? word)
        
            # get the first letter capitalized 
            word = word[0].upcase + word[1..-1]
            new_message.push(word)     
            count += 1

        else
            # append as is - no capitalizing
            new_message.push(word)
            count += 1
        end
    end

    new_message.join(" ")

end

