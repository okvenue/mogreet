module Mogreet
  def self.config
    @@config ||= Config.new
  end
  
  def self.configure
    @@config = Config.new
    yield config
  end
  
  class Response
  end
end