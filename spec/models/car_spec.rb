require "rails_helper"

RSpec.describe Car do
  describe ".financing_offer_eq" do
    it "finds records with matching attribute" do
      first_car = Car.create(financing_offer: { "down_payment"=>"10000" })
      second_car = Car.create

      result = Car.financing_offer_eq(:down_payment, "10000")

      expect(result).to include first_car
    end
  end
end
