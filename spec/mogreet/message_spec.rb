require 'spec_helper'

describe Mogreet::Message do
  before do
    Mogreet.configure do |config|
      config.client_id = '123'
      config.token = 'abc'
      config.campaign_id = '1234'      
    end
  end
  
  describe ".send" do
    it "should send the MMS" do
      http_response = double('mogreet response', body: load_fixture('transaction_send.xml'))
      HTTParty.should_receive(:get).with("https://api.mogreet.com/moms/transaction.send", query: {
        'client_id' => '123',
        'token' => 'abc',
        'campaign_id' => '1234',
        'to' => '6015121232',
        'content_url' => 'http://assets.com/image.png',
        'message' => 'hello'
        }).and_return(http_response)
      
      response = Mogreet::Message.send(to: '6015121232', message: 'hello', content_url: 'http://assets.com/image.png')
      response.status.should == 'success'
      response.code.should == '1'
      response.message.should == 'Mogreet successfully sent!'
      response.message_id.should == "123456789"
      response.transaction_hash.should == "a12b3c4d"
    end
  end
end