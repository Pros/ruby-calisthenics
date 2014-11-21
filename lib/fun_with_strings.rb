module FunWithStrings
  def palindrome?
    s = self.gsub(/[^\p{Alpha}]/, '').downcase
    s == s.reverse
  end
  def count_words
    self.split(/\W+/).reject(&:empty?).inject(Hash.new(0)) { |words, word| words[word.downcase] += 1; words }
    # words = Hash.new(0)
    # self.split(/\W+/).reject(&:empty?).each { |word| words[word.downcase] += 1 }
    # words
  end
  def anagram_groups
    words = self.split(' ')
    hashed = Hash.new([])
    words.each_with_index do |word, index|
      word = word.downcase.split('').sort.join
      hashed[word] += [index]
    end
    groups = hashed.values.map { |value| value.map { |index| words[index] } } # if value.count > 1 }
    groups
  end
  
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end


p "".anagram_groups