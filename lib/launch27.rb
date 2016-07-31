require "launch27/version"
require "launch27/configuration"
require "launch27/client"

module Launch27
  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
