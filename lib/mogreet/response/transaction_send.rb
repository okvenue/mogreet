class Mogreet::Response::TransactionSend < Hashie::Mash
  def transaction_hash
    self[:hash]
  end
end