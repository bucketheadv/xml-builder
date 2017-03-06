# Xml::Builder

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/xml/builder`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'xml-builder'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install xml-builder

## Usage

```ruby
require 'xml/builder'
include XML::Builder
html(doctype: 'app') {
    head {
        title { 'This is title' }
    }
    body(onload: 'javascript:void(0)') {
        div(class: 'v1') { 'div1' }
        div(class: 'v2') { 'div2' }
    }
}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sven199109/xml-builder.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

