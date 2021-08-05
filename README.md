# only_blank [![Build Status](https://travis-ci.com/zw963/only_blank.svg?branch=master)](https://travis-ci.com/zw963/only_blank) [![Gem Version](https://badge.fury.io/rb/only_blank.svg)](http://badge.fury.io/rb/only_blank)

# only_blank
A tiny library for bring the ruby on rails awesome `blank?` method and friends to ruby.

## Getting Started

Add to your Gemfile

```rb
gem 'only_blank'

Then, you get three method `blank?`, `present?`, `presence` defined on following class.

FalseClass, Object, NilClass, Numeric, String, TrueClass.
```

## Credits

Basically, this gem just a tiny wrapper around two library.

1. [The sequel blank extension](https://github.com/jeremyevans/sequel/blob/master/lib/sequel/extensions/blank.rb) which implement the same blank? logic as Ruby On Rails.

2. [fast_blank gem](https://github.com/SamSaffron/fast_blank), which is a simple C extension which provides a very fast implementation of `String#blank?` method.
