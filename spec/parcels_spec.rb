require('rspec')
require('pry')
require('parcels')

describe (Parcels) do

  describe ("#initialize")  do
    it("initializes Parcels") do
      my_parcel = Parcels.new( 5, 10, 10, 10, "next day", "domestic" )
      expect(my_parcel.specs()).to(eq([5, 10, 10, 10, "next day", "domestic"]))
    end
  end

  describe ("#volume")  do
    it("calculates parcel volume") do
      my_parcel = Parcels.new( 5, 10, 10, 10, "next day", "domestic")
      expect(my_parcel.volume).to(eq(500))
    end
  end

  describe ("#cost_to_ship")  do
    it("calculates cost to ship parcel") do
      my_parcel = Parcels.new( 5, 10, 10, 10, "next day", "domestic")
      expect(my_parcel.cost_to_ship).to(eq(180))
    end
  end

end
