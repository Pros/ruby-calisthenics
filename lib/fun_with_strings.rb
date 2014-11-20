module FunWithStrings
  def palindrome?
    s = self.gsub(/[^\p{Alpha}]/, '').downcase
    s == s.reverse
  end
  def count_words
    # your code here
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

