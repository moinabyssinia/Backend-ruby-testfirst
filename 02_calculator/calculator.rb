#write your code here
def add(*item)
    result = 0

    # using the splat operater to add multiple arguments
    item.each do |element|
        result += element
    end    

    result
end

def subtract(a, b)
    a - b
end

def sum(array)
    result = 0

    array.each do |item|
        result += item
    end

    result
end

def multiply(*item)
    result = 1
    item.each do |element|
        result *= element
    end

    result
end

def power(a,b)
    a**b
end


def factorial(number)
    if number == 0
        1
    elsif number == 1
        1
    else
        factorial_result = 1
        while number >= 1
            factorial_result *= (number)
            number -= 1
        end

        factorial_result
    end
end

