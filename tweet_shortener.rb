# Write your code here.
# dictionary with substitute words
def dictionary
  dictionary = {
    "too" => "2", 
    "to" => "2", 
    "two" => "2",
    "four" => "4", 
    "for" => "4", 
    "you" => "u",
    "at" => "@", 
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(' ')
end