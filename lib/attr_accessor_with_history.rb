class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s # make sure it's a string
    attr_reader attr_name # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    class_eval %Q{
      # YOUR CODE HERE
    }
  end
end

class Foo 
  attr_accessor_with_history :bar
end

def test
  f = Foo.new        
  f.bar = 3          # => 3
  f.bar = :wowzo     # => :wowzo
  f.bar = 'boo!'     # => 'boo!'
  f.bar_history      # => [nil, 3, :wowzo]
end