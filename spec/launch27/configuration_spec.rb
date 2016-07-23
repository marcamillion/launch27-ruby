require "spec_helper"

module Launch27
  describe Configuration do
    describe "#initialize" do
      before do
        Launch27.configure do |config|
          config.api_key = "api_key"
        end
      end

      it "has a default api_key value" do
        expect(Launch27.configuration.api_key).to eql("api_key")
      end
    end
  end
end
