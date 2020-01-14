# MathApiCli

This gem queries numbersapi.com for facts about the numbers from 1 to 100, inclusive, and allows the user to select a number to hear a fact, either trivia or math-related, through the use of submenus. Then, once a fact has been displayed, the gem stores it in a history array which a user can request to see, again through the use of submenus.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'math_api_cli'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install math_api_cli

## Usage

To run the CLI, type "ruby bin/run".
Once there, the main menu will display and await your input to further interact with the program.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nwscala/math_api_cli. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the MathApiCli project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/math_api_cli/blob/master/CODE_OF_CONDUCT.md).
