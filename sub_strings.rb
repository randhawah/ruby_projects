@@ -0,0 +1,14 @@
def sub_string(text, dictionary)
    result = Hash.new(0)
    text.downcase!

    dictionary.each do |word| 
        #puts text.scan(word).length
        count = text.scan(word).length
        result[word] = count unless count ==0
    end
    return result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts sub_string("Howdy partner, sit down! How's it going?", dictionary)