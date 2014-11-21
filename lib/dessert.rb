class Dessert
  # Create a class Dessert with getters and setters for name and calories. The constructor should accept arguments for name and calories.
  attr_accessor :name, :calories
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    # returns true if and only if a dessert has less than 200 calories
    @calories < 200
  end
  def delicious?
    # returns true for all desserts
    # 2. Modify to return false if the flavor is licorice, but true for all other flavors.
    # The behavior of delicious? for non-jelly-bean desserts should be unchanged
    flavor = self.respond_to?(:flavor) ? self.flavor : nil
    flavor != 'licorice'
  end
end

# Create a class JellyBean that inherits from Dessert. The constructor should accept a single argument
# giving the jelly bean's flavor; a newly-created jelly bean should have 5 calories and its name should be
# the flavor plus "jelly bean", for example, "strawberry jelly bean". Add a getter and setter for the flavor
class JellyBean < Dessert
  attr_accessor :flavor
  def initialize(flavor)
    @name = flavor + " jelly bean"
    @calories = 5
    @flavor = flavor
  end
end

# d = JellyBean.new("licorice")
# p d.delicious?
