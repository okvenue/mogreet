# Mogreet

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'mogreet'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mogreet

## Usage

    response = Mogreet::Message.send to: '5551236789',
                                     message: 'Hello World!',
                                     content_url: 'http://rubyonrails.org/images/rails.png'
    response.status           #=> "success"
    response.code             #=> "1"
    response.message          #=> "Mogreet successfully sent!"
    response.message_id       #=> 123456789
    response.transaction_hash #=> "a12b3c4d"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
