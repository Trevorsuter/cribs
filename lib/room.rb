class Room
attr_reader :category, :painted
  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width
    @painted = false
  end

  def area
    @length * @width.to_i
  end

  def is_painted?
    painted
  end

  def paint
    @painted == true
  end
end
#   def paint
#     is_painted? = true
#   end
# end
