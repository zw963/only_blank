# only_blank
A tiny library for bring the awesome `blank?` method to ruby.

## Getting Started

Add to your Gemfile

```rb
gem 'only_blank'

```

## Credits

Basically, this gem just a tiny wrapper around two library.

1. [The sequel blank extension](https://github.com/jeremyevans/sequel/blob/master/lib/sequel/extensions/blank.rb) which implement the same blank? logic as Ruby On Rails.
2. [fast_blank gem](https://github.com/SamSaffron/fast_blank), which is a simple C extension which provides a fast implementation of `String#blank?` method.
