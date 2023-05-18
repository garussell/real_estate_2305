require './lib/room'

RSpec.describe Room do
  before(:each) do
    @room = Room.new(:bedroom, 10, '13')
    @room1 = Room.new(:bedroom, 10, '13')
    @room2 = Room.new(:living_room, 15, '12')
  end
  describe "Iteration 1" do
    it "exists" do
      expect(@room).to be_a Room
    end

    it "it has a category" do
      expect(@room.category).to eq(:bedroom)
    end

    it "can get area" do
      expect(@room1.area).to eq(130)
      expect(@room2.area).to eq(180)
    end
  end

  describe "#is_painted?" do
    it "can be painted or not" do
      expect(@room.is_painted?).to be false
      @room.paint
      expect(@room.is_painted?).to be true
    end
  end
end
