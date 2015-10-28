[Westernstadt]
==============

**Only the facade counts.**

Installation
------------

1. Create a Gemfile

    ```ruby
    #!/usr/bin/env bundle

    source 'https://rubygems.org'

    gem 'bitaculous-westernstadt', github: 'bitaculous/westernstadt', require: false
    ```

2. Run `bundle` to install all dependencies with [Bundler]

Usage
-----

1. Create a Rack configuration

    ```ruby
    #!/usr/bin/env rackup

    # This file is used by Rack-based servers to start the application.

    require 'bundler/setup'

    require 'bitaculous/westernstadt/engine'

    engine = Bitaculous::Westernstadt::Engine.new
    engine.settings.set :root, Dir.pwd

    run engine
    ```

2. Run Westernstadt with `rackup` or your favorite Ruby Webserver

Development
-----------

### Run specs with [RSpec]

Run `rspec`.

or via [Guard]:

```
$ guard -g spec
```

### See Test Coverage

Run `COVERAGE=true rspec`.

### Run [RuboCop]

Run `rubocop`.

To run all specs and RuboCop altogether, run `rake`.

Bug Reports
-----------

Github Issues are used for managing bug reports and feature requests. If you run into issues, please search the issues
and submit new problems [here].

Versioning
----------

This library aims to adhere to [Semantic Versioning 2.0.0]. Violations of this scheme should be reported as bugs.
Specifically, if a minor or patch version is released that breaks backward compatibility, that version should be
immediately yanked and / or a new version should be immediately released that restores compatibility.

License
-------

Westernstadt is released under the [MIT License (MIT)], see [LICENSE].

[Bundler]: http://bundler.io "The best way to manage a Ruby application's gems"
[Code Climate]: https://codeclimate.com/github/bitaculous/westernstadt "Westernstadt at Code Climate"
[Code Climate Status]: https://img.shields.io/codeclimate/github/bitaculous/westernstadt.svg?style=flat "Code Climate Status"
[Gemnasium]: https://gemnasium.com/bitaculous/westernstadt "Westernstadt at Gemnasium"
[Gemnasium Status]: http://img.shields.io/gemnasium/bitaculous/westernstadt.svg?style=flat "Gemnasium Status"
[Guard]: http://guardgem.org "A command line tool to easily handle events on file system modifications."
[here]: https://github.com/bitaculous/westernstadt/issues "Github Issues"
[LICENSE]: https://raw.githubusercontent.com/bitaculous/westernstadt/master/LICENSE "License"
[MIT License (MIT)]: http://opensource.org/licenses/MIT "The MIT License (MIT)"
[RSpec]: http://rspec.info "Behaviour Driven Development for Ruby"
[RuboCop]: https://github.com/bbatsov/rubocop "A Ruby static code analyzer, based on the community Ruby style guide."
[Ruby]: https://www.ruby-lang.org "A dynamic, open source programming language with a focus on simplicity and productivity."
[Semantic Versioning 2.0.0]: http://semver.org "Semantic Versioning 2.0.0"
[Test Coverage]: https://codeclimate.com/github/bitaculous/westernstadt "Test Coverage (Code Climate)"
[Test Coverage Status]: https://img.shields.io/codeclimate/coverage/github/bitaculous/westernstadt.svg?style=flat "Test Coverage Status"
[Travis CI]: https://travis-ci.org/bitaculous/westernstadt "Westernstadt at Travis CI"
[Travis CI Status]: https://img.shields.io/travis/bitaculous/westernstadt.svg?style=flat "Travis CI Status"
[Westernstadt]: https://github.com/bitaculous/westernstadt/ "Only the facade counts."