# Problem #49/Medium https://leetcode.com/problems/group-anagrams/

# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
    
    # set up an empty hash
    anagrams = Hash.new 

    strs.each do |word| # iterate through the given array of words

        # re-arrange each word alphabetically ie sort it
        sorted_word = word.split("").sort.join("") 
        
        # check if this sorted word is in our Hash/Dictionary
        if anagrams[sorted_word].nil?
            # if it isn't add it with 
            # the key as the sorted word and the value as the original word
            # add it as an element of an array though as we will 
            # append to the array in the else case below
            anagrams[sorted_word] = [word]
        else
            # if it in the hash, append the original word to the array
            # that is the value for the same key
            anagrams[sorted_word] << word
        end
    end
    # at this point we have the anagrams variable populated with each key 
    # being the sorted word and the value being an array of the orig words

    # we don't need to output the keys, 
    # just collect the values and return it
    output = []
    anagrams.each do |k,v|
        output << v
    end
    return output
end