# Dictionary

[![Build Status](https://secure.travis-ci.org/mhuggins/ruby-dictionary.png)](http://travis-ci.org/mhuggins/ruby-dictionary)
[![Code Climate](https://codeclimate.com/github/mhuggins/ruby-dictionary.png)](https://codeclimate.com/github/mhuggins/ruby-dictionary)

[ruby-dictionary](https://github.com/mhuggins/ruby-dictionary) provides a
simple dictionary that allows for checking existence of words and finding a
subset of words given a prefix.

## Installation

Add this line to your application's Gemfile:

    gem 'ruby-dictionary'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruby-dictionary

## Usage

A dictionary is created by passing an array of strings to the initializer.

    dictionary = Dictionary.new(%w(a ab abs absolute absolutes absolutely
                                   absolve be bee been bees bend bent best))

Alternatively, words can be read in from a file (raw or gzip compressed) as
well.

    dictionary = Dictionary.from_file('path/to/uncompressed.txt')
    dictionary = Dictionary.from_file('path/to/compressed.txt.gz')

It is assumed that the file contains one word per line.  However, a separator
can be passed to the method as an optional second parameter if that's not the
case.

    dictionary = Dictionary.from_file('path/to/uncompressed.txt', ' ')
    dictionary = Dictionary.from_file('path/to/compressed.txt.gz', ',')

Once a dictionary is loaded, the `#exists?` method can be used to determine if
a word exists.

    dictionary.exists?('bees')       # => true
    dictionary.exists?('wasps')      # => false

The `#starting_with` method returns a sorted array of all words starting with
the provided string.

    dictionary.starting_with('bee')  # => ["bee", "been", "bees"]
    dictionary.starting_with('foo')  # => []

The `#prefixes` method returns a sorted array of all the words appearing in the
beginning of the provided string.

    dictionary.prefixes('abstract')  # => ["a", "ab", "abs"]
    dictionary.prefixes('bend')      # => ["be", "bend"]


### Case Sensitivity

By default, a new `Dictionary` is case-insensitive, meaning "bee", "Bee", and
"BEE" are all considered to be the same, regardless of adding to the dictionary
or searching within it.

However, you can choose to use case-sensitive dictionary by passing an optional
`true` parameter to both the `#new` and `#from_file` methods.

    dictionary = Dictionary.new(%w(Alpha Beta), true)
    dictionary.exists?('Alpha')      # => true
    dictionary.exists?('alpha')      # => false

    dictionary = Dictionary.from_file('restaurants.txt', "\n", true)
    dictionary.starting_with('Mc')   # => ["McDonald's"]
    dictionary.starting_with('mc')   # => []

Additionally, you can determine whether a dictionary is case-sensitive via the
`#case_sensitive?` method.

    dictionary = Dictionary.new([])
    dictionary.case_sensitive?       # => false

    dictionary = Dictionary.new([], true)
    dictionary.case_sensitive?       # => true

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
