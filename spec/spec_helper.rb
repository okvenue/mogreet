require 'mogreet'

module Helpers
  def load_fixture(name)
    File.read(File.expand_path("../fixtures/#{name}", __FILE__))
  end
end

RSpec.configure do |config|
  config.include Helpers
end