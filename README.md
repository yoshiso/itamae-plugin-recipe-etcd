# Itamae::Plugin::Recipe::Etcd

Itamae recipe plugin for etcd v2.x.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'itamae-plugin-recipe-etcd'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install itamae-plugin-recipe-etcd

## Usage

### Install

```
include_recipe "etcd::install"

include_recipe "etcd::enable"
include_recipe "etcd::disable"
```

### Usage

node.yml example

```
etcd:
  listen_client_urls: http://localhost:2379
  listen_peer_urls: http://localhost:2380
  advertise_client_urls: http://localhost:2379
  initial_advertise_peer_urls: http://localhost:2380
etcdctl:
  peers: http://localhost:2379

```

see other attributes => [attribtues.rb](https://github.com/yss44/itamae-plugin-recipe-etcd/blob/master/lib/itamae/plugin/recipe/etcd/attributes.rb)

## Todo

write specs.


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/itamae-plugin-recipe-etcd/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
