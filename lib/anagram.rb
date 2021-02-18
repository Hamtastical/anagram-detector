# Your code goes here!
class Anagram #Anagram class start here
    attr_accessor :detector #detector instanve variable

    def initialize(detector) #initialize the instance variable
        @detector = detector
    end

    def match(array) #method to match anagrams that takes an argument of the arrays
        results = [] #create an empty array to call
        array.each do |word|  #iterate through the arrays in order to find the matching anagram

            detector_array = detector.split("").sort #make a variable that contains the global instance(word that will be trying to mach the words in the array.), that is split into each character and then sorted to match the below
            char_splits = word.split("").sort #make another variable that contains the guven words in the array that is then split into each character and then sorted to match the above

            if detector_array == char_splits # if the word provided that is sorted, is equal to any of the words in the array
                results << word #the results is the word that is then pushed into the empty array

            end
        end
        results #then call the empty array for the results
    end
end
