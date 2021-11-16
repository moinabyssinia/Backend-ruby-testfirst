class Book
    # write your code here
    attr_accessor :title
    def initialize
        @title = ""
    end

    def title
        title_array = @title.split()
        exceptions = ['the', 'and', 'a', 'an', 'in', 'of']
        title_cap = []
        count = 0 

        title_array.each do |item|
            unless exceptions.include? item
                title_cap.push(item.capitalize)
            else
                if count == 0
                    title_cap.push(item.capitalize)
                else
                    title_cap.push(item)
                end
            end

            count +=1
            
        end
        title_cap.join(" ")
    end

end


# book = Book.new 
# puts book.title = "inferno"
# puts book.title