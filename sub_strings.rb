dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
matches = {}
  dictionary.each do |word|
    matches[word] = string.downcase.scan(word).count
  end
  matches
end

puts substrings("Below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
