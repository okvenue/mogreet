class Mogreet::Message
  class << self
    def send(options)
      response = HTTParty.get("https://api.mogreet.com/moms/transaction.send", query: Mogreet.config.merge(options).to_hash)
      Mogreet::Response::TransactionSend.new Crack::XML.parse(response.body)['response']
    end
  end
end