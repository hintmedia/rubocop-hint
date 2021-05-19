# Hint Ruby/Rails/RSpec Style

Shared Hint Rubocop style config

## Installation

Add this line to your application's Gemfile:

```ruby
group :development, :test do
  gem 'rubocop-hint'
end
```
_This gem includes Rubocop, RubocopRspec, RubocopRails, RubocopPerformance, and Standard as dependencies._

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rubocop-hint

## Usage

Either create or update the `.rubocop.yml` with the following:

```yaml
inherit_gem:
  rubocop-hint:
    - default.yml

AllCops:
  TargetRubyVersion: PROJECT_RUBY_VERSION
  TargetRailsVersion: PROJECT_RAILS_VERSION
  DisplayCopNames: true
  Exclude:
    - 'bin/**/*'
    - 'config/**/*'
    - 'db/**/*'
    - 'Gemfile*'
    - 'script/**/*'
    - 'test/**/*'
    - 'vendor/**/*'
```

If there are project specific styles you can override the Hint gem by adding them to `.rubocop.yml`

Rubocop's inheritance trail is:

`inherit_gem` -> `inherit_from` -> `.rubocop.yml`

## Contributing

Pull requests are welcome on GitHub at https://github.com/hintmedia/rubocop-hint.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

