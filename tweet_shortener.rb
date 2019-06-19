def dictionary
  dictionary = {
    "too" => "2",
    "to" => "2",
    "two" =>"2",
    "four" => "4",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  words = tweet.split(" ")
  new_tweet = []

  words.each do |word|
    case word.downcase
    when "hello"
      new_tweet << "hi"
    when "to", "two", "too"
      new_tweet << "2"
    when "for", "four" 
      new_tweet << "4"
    when "be" 
      new_tweet << "b"
    when "you" 
      new_tweet << "u"
    when "at" 
      new_tweet << "@" 
    when "and" 
      new_tweet << "&"
    else
      new_tweet << word
    end
  end
  new_tweet.join(" ")
end