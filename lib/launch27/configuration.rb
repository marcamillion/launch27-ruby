module Launch27
  class Configuration
    attr_accessor :api_key
    attr_accessor :email
    attr_accessor :password

    def initialize
      @api_key = nil
      @email = nil
      @password = nil
    end
  end
end
