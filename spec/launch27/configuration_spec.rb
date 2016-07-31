require "spec_helper"

module Launch27
  describe Configuration do
    describe "#initialize" do
      before do
        Launch27.configure do |config|
          config.api_key = "api_key"
          config.email = "random@test.com"
          config.password = "test-123"
        end
      end

      it "has a default api_key value" do
        expect(Launch27.configuration.api_key).to eql("api_key")
      end

      it "accepts email as a config value" do
        expect(Launch27.configuration.email).to eql("random@test.com")
      end

      it "accepts password as a config value" do
        expect(Launch27.configuration.password).to eql("test-123")
      end
    end
  end
end
