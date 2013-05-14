# Bellow

Simple gem that uses the gems 'prowl' and 'ruby-notify-my-android'.

It simplifies these two gems down to a very simple API: `Bellow.notify(people, title, message)`

## Installation

Add this line to your application's Gemfile:

    gem 'bellow'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bellow

## Usage

```ruby
# Create your structure
people = {
  :guillaume => {
    :prowl => "f7a1879f0331667e0a993b501127a5f21ce7fbff",
    :nma => "baa2ab11aa424a08945938a3df1e0341ce935d30704eca0b"
  },
  'keyvan fatehi' => {
    :prowl => "757e5b121f243d7309eafa041ba93f5d794336cd"
  },
  :steve => {
    :prowl => "85138c449bd3ee2f48039c8ca471f710c4257f70"
  }
}

app = "McDonalds"
message = "Hey guys I just ordered a Big Mac LOL"

# Notify them all with Bellow
Bellow.notify(people, app, message)
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
