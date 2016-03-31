# Plagiarism

Search for plagiarism and check the duplication of your content by search engines, free and paid services.

## Installation

```ruby
gem 'plagiarism2', require: 'plagiarism'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install plagiarism2

## Usage

Add in your config

```ruby
Plagiarism.configure do |config|
  config.strategies = [xxx] # => [:google, :bing]
end
```

In case of using bing engine, you have to set access key

```ruby
config.bing_key = xxx
```

After that you can check the unique of content

```ruby
text = 'Latte user story paradigm affordances experiential innovate venture capital physical computing. Ship it agile actionable insight iterate thought leader pitch deck experiential iterate. Venture capital food-truck quantitative vs. qualitative SpaceTeam convergence agile.'
Plagiarism.unique? text
```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/MQuy/plagiarism. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

