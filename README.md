# PhoneArea

Find out the province,city and operator based on the chinese phone number

根据中国电话号码，查询该号码所属的省，市以及运营商

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'phone_area'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install phone_area

## Usage

```ruby
PhoneArea.check(phone)

# When phone is valid 
PhoneArea.check("18602870000")
# => {:province=>"四川", :city=>"成都", :sp=>"联通"}

# When phone is invalid return empty values
PhoneArea.check("186")
# => {:province=>"", :city=>"", :sp=>""}

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/luolinae86/phone_area.
