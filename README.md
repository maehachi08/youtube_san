# YoutubeSan

## overview

Get YouTube video data from YouTube Data API v3.

## format

Get format is same the [goosetune](https://github.com/maehachi08/goosetune).

It configure hash structure in the array.

```yaml
bhjCc-gKVvQ:
  id: bhjCc-gKVvQ
  url: https://www.youtube.com/watch?v=bhjCc-gKVvQ
  thumbnail: https://i.ytimg.com/vi/bhjCc-gKVvQ/maxresdefault.jpg
  view_counts: '197768'
  title: Nonstop!Journey／Goose house
  published: '2016-03-20T08:55:59.000Z'
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'youtube_san', :git => 'git@github.com:maehachi08/youtube_san.git', :branch => 'master'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install specific_install
    $ gem specific_install -l git@github.com:maehachi08/youtube_san.git

Or install git clone

    $ git clone git@github.com:maehachi08/youtube_san.git
    $ cd goosetune
    $ rake build
    $ gem install pkg/youtube_san-0.0.1.gem

## Usage

Set google api key and youtube channel id

```sh
cp .env_sample .env
vim .env
```

```ruby
require 'Youtube_san'

v = YoutubeSan::Videos.new
v.get_by_year('2016')
```

```ruby
require 'Youtube_san'

v = YoutubeSan::Videos.new
v.get_by_latest
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/maehachi08/youtube_san.

