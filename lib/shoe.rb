require 'pry'
class Shoe
  
  BRANDS = []
  
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  def initialize(brand)
    @brand = brand
    push_BRANDS_uniq(brand)
  end
  #helper method
  #that pushes brand to BRANDS unless it exists
  def push_BRANDS_uniq(brand)  
    if !BRANDS.any?{|ele| ele == brand}
      BRANDS << brand
    end
  end
  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end