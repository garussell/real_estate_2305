require './lib/room'
require './lib/house'

RSpec.describe House do
  before(:each) do
    @house = House.new("$400000", "123 sugar lane")
    @room_1 = Room.new(:bedroom, 10, '13')
    @room_2 = Room.new(:bedroom, 11, '15')   
    @room_3 = Room.new(:living_room, 25, '15')
    @room_4 = Room.new(:basement, 30, '41')
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
      expect(@house.rooms).to eq [@room_1, @room_2] 
    end
  end

  describe "#above_market_average?" do
    it "compares price to market average" do
      expect(@house.above_market_average?).to be false
    end
  end

  describe "#rooms_from_category" do
    it "can sort rooms by category" do
      @house.add_room(@room_1)
      @house.add_room(@room_2)
      @house.add_room(@room_3)
      @house.add_room(@room_4)
      expect(@house.rooms_from_category(:bedroom)).to eq [@room_1, @room_2]
      expect(@house.rooms_from_category(:basement)).to eq [@room_4]
    end
  end

  describe "#area" do
    it "can calculate area" do
      @house.add_room(@room_1)
      @house.add_room(@room_2)
      @house.add_room(@room_3)
      @house.add_room(@room_4)
      expect(@house.area).to eq 1900
    end
  end
end