# Launch27 Ruby Client

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/launch27`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'launch27-ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install launch27-ruby

## Usage

#### Configure Gem with your API Key

Once you install, the first step is to configure the gem to use your Launch27 API Key.

Login to your Launch27 account, go to settings and click the `API Access` tab. From there you will see two API keys. One for 'Test' and one for 'Live'.

Add that key to your environment variables.

Create a config file with the following in there:

````
Launch27.configure do |config|
  config.api_key = 'ENV["MY_LAUNCH27_API_KEY"]'
end
````

Where `ENV["MY_LAUNCH27_API_KEY"]` is set wherever your Environment Variables are set.



TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/launch27. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
