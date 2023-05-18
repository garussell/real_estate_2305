class Room
  attr_reader :category
              :lengths
              :width
 
  def initialize(category, lengths, width)
    @category = category 
    @lengths = lengths
    @width = width
    @painted = false
  end

  def area
    @lengths * @width.to_i
  end

  def is_painted?
    @painted
  end

  def paint
    @painted = true
  end
end
