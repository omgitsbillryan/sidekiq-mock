# Sidekiq::Mock

This gem is meant as a mock implementation of Sidekiq Enterprise. [sidekiq-ent](https://github.com/mperham/sidekiq/wiki#sidekiq-enterprise) requires a license key to download. As an organization, you may not want to widely distribute this license key to all developers. Sidekiq Mock is meant to mock all of the API's available for use in [sidekiq-ent](https://github.com/mperham/sidekiq/wiki#sidekiq-enterprise) that are not available in plain old [sidekiq](https://github.com/mperham/sidekiq).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sidekiq-mock'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sidekiq-mock

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/sidekiq-mock.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
