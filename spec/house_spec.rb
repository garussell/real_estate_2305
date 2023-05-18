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
      expect(house.price).to eq 400000
    end
  end
end