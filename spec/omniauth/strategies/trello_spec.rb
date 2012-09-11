# TOTEST

require 'spec_helper'

describe OmniAuth::Strategies::Trello do
  subject do
    OmniAuth::Strategies::Trello.new({})
  end

  context "client options" do
    it 'should have correct name' do
      subject.options.name.should eq("trello")
    end

    it 'should have correct site' do
      subject.options.client_options.site.should eq('https://trello.com/1/')
    end

    it 'should have correct request url' do
      subject.options.client_options.authorize_path.should eq('OAuthGetRequestToken')
    end
    
    it 'should have correct authorize url' do
      subject.options.client_options.authorize_path.should eq('OAuthAuthorizeToken')
    end
    
    it 'should have correct access url' do
      subject.options.client_options.authorize_path.should eq('OAuthGetAccessToken')
    end
  end
end