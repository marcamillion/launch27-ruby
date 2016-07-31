require "spec_helper"
require "base64"

module Launch27
  describe Client do
    before :each do
      Launch27.configure do |config|
        config.api_key = ENV["LAUNCH27_API_KEY"]
        config.email = ENV["LAUNCH27_EMAIL"]
        config.password = ENV["LAUNCH27_PASSWORD"]
      end
      @client = Launch27::Client.new
    end

    describe '#initialize' do
      it "has a default API KEY value" do
        expect(@client.api_key).to eq(ENV["LAUNCH27_API_KEY"])
      end

      it "has a default email value" do
        expect(@client.email).to eq(ENV["LAUNCH27_EMAIL"])
      end

      it "has a default password value" do
        expect(@client.password).to eq(ENV["LAUNCH27_PASSWORD"])
      end
    end

    context 'authorization' do
      it "uses password" do
        @client.email = nil

        expect(@client.connection.params["password"]).to eq(ENV["LAUNCH27_PASSWORD"])
      end

      it "uses email" do
        @client.password = nil

        expect(@client.connection.params["email"]).to eq(ENV["LAUNCH27_EMAIL"])
      end

      it "should respond with a single access token" do
        # binding.pry
        expect(response).to be_a(String)
      end

    end
  end
end
