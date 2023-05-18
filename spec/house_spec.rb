require './lib/room'
require './lib/house'

RSpec.describe House do
  before(:each) do
    @house = House.new("$400000", "123 sugar lane")
    @room_1 = Room.new(:bedroom, 10, '13')
    @room_2 = Room.new(:bedroom, 11, '15')   
  end

  describe "#exists" do
    it "exists" do
      expect(@house).to be_a House
    end
  end

  describe "#price" do
    it "has a price" do
      expect(@house.price).to eq 400000
    end
  end

  describe "#address" do
    it "has an address" do
      expect(@house.address).to eq "123 sugar lane"
    end
  end

  describe "#add_room" do
    it "has rooms" do
      @house.add_room(@room_1)
      @house.add_room(@room_2)
      expect(@house.rooms(@room_1)).to eq [@room_1, @room_2] 
    end
  end
end