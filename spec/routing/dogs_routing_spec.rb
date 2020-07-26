require "rails_helper"

RSpec.describe DogsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/dogs").to route_to("dogs#index")
    end
  end
end
