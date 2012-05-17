# Mogreet

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'mogreet'

## Configuration

Configure mogreet (add this block to config/initializers/mogreet.rb in case of Rails application):

    Mogreet.configure do |config|
      config.client_id   = "123"
      config.token       = "ee91dfa14e59a8600d7976c554f2ed12"
      config.campaign_id = "19001"
    end

## Usage

Send MMS message:

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
