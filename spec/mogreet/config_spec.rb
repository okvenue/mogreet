require 'spec_helper'

describe Mogreet::Config do
  describe ".configure" do
    specify do
      Mogreet.configure do |config|
        config.client_id = "123"
        config.token = 'abcd'
        config.campaign_id = '1234'
      end
      
      Mogreet.config.client_id.should == '123'
      Mogreet.config.token.should == 'abcd'
      Mogreet.config.campaign_id.should == '1234'
    end
  end
end