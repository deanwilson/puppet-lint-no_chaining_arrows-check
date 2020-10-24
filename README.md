# puppet-lint no chaining arrows check

Extends puppet-lint to issue warnings if any chaining arrows
(`->`, `~>`, `<-`, `<~`) are found.

[![Actions Status](https://github.com/deanwilson/puppet-lint-no_chaining_arrows-check/workflows/Ruby/badge.svg)](https://github.com/deanwilson/puppet-lint-no_chaining_arrows-check/actions)

Although puppet-lint has the included
[Right To Left Relationship](http://puppet-lint.com/checks/right_to_left_relationship/)
check I wanted one that went further and warned on any use of chaining
arrows. In my puppet code I'd rather have resources connected with
parameters, such as `require` and `notify`. I also find the indentation nicer
without the `type` being offset by the arrow.

```puppet

  # I think this -
  file { '/tmp/foo':
    content => 'foo',
    require => Class['bar'],
    ...
  }

  # - looks nicer than this
  -> file { '/tmp/foo':
    content => 'foo',
    ...
  }
```

This plugin has one side effect, it disables the
[Right To Left Relationship](http://puppet-lint.com/checks/right_to_left_relationship/)
check that produces

    WARNING: right-to-left (<-) relationship on line $foo

This is to ensure that some relationships, specified with
`<-` and `<~`, are not reported twice.

## Installation

To use this plugin add the following line to your Gemfile

    gem 'puppet-lint-no_chaining_arrows-check'

and then run `bundle install`.

## Usage

This plugin provides a new check to `puppet-lint`.

    WARNING: chaining arrow found on line 3

## Other puppet-lint plugins

You can find a list of my `puppet-lint` plugins in the
[unixdaemon puppet-lint-plugins](https://github.com/deanwilson/unixdaemon-puppet-lint-plugins) repo.

### Author

[Dean Wilson](https://www.unixdaemon.net)

### License

 * MIT
