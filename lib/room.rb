class Room
  attr_reader :room
              :length
              :width

  def initialize(room, length, width)
    @room = room 
    @length = length
    @width = width
  end
end
