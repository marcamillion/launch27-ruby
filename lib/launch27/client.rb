require "faraday"
require "faraday_middleware"
require "json"
require "pry"

module Launch27
  class Client

    attr_accessor :api_key, :email, :password

    def initialize(api_key=nil, email=nil, password=nil)
      @api_key = api_key || Launch27.configuration.api_key
      @email = email || Launch27.configuration.email
      @password = password || Launch27.configuration.password
    end

    def content_type
      'application/json'
    end

    def api_version
      'application/launch27.v2'
    end

    def connection
      @connection ||= Faraday.new do |f|
        f.url_prefix = "https://acme-sandbox.l27.co/api/auth"
        f.adapter :net_http

        f.headers['User-Agent'] = "Launch27 v#{Launch27::VERSION}"
        f.headers['Content-Type'] = content_type
        f.headers['Accept'] = api_version
        f.headers['X-API-Key'] = api_key
        f.params['email'] = email if email
        f.params['password'] = password if password

        f.response :json, content_type: /\bjson$/
      end
    end
  end
end
