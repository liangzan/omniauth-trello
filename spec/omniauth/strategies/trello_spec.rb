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
      subject.options.client_options.site.should eq('https://trello.com')
    end

    it 'should have correct request token path' do
      subject.options.client_options.request_token_path.should eq('/1/OAuthGetRequestToken')
    end

    it 'should have correct authorize path' do
      subject.options.client_options.authorize_path.should eq('/1/OAuthAuthorizeToken')
    end

    it 'should have correct access token url' do
      subject.options.client_options.access_token_path.should eq('/1/OAuthGetAccessToken')
    end
  end
end
