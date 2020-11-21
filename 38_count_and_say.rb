# Problem 38 - Easy
# https://leetcode.com/problems/count-and-say/

# @param {Integer} n
# @return {String}
def count_and_say(n)
    if n == 1
        return '1' # base case for reursion
    end

    # recursively call the next lower value of n ie (n-1)
    array = count_and_say(n-1).to_s.split("")

    # we count repetitions ie occurences and then
    # form a string of the occurences + number
    # ie 111 => 31(s) and so on
    number_of_repetitions = 1
    str = ''
    (0..array.length-1).each do |i|
        digit = array[i]
        if array[i+1] == array[i]
            number_of_repetitions += 1
        else
            str += number_of_repetitions.to_s + digit.to_s
            number_of_repetitions = 1
        end
    end
    return str
end