# Hint::RubocopStyle

Shared Hint Rubocop style config

## Installation

Add this line to your application's Gemfile:

```ruby
group :development, :test do
  gem 'hint-rubocop_style'
end
```
_This gem includes Rubocop and RubocopRspec as dependencies._

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hint-rubocop_style

## Usage

Either create or update the `.rubocop.yml` with the following:

```yaml
inherit_gem:
  hint-rubocop_style:
    - default.yml

AllCops:
  TargetRubyVersion: PROJECT_RUBY_VERSION
  TargetRailsVersion: PROJECT_RAILS_VERSION
```

If there are project specific styles you can override the Hint gem by adding them to `.rubocop.yml`

Rubocop's inheritance trail is:

`inherit_gem` -> `inherit_from` -> `.rubocop.yml`

## Contributing

Pull requests are welcome on GitHub at https://github.com/hintmedia/hint-rubocop_style.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

