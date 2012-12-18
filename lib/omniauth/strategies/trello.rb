require 'omniauth-oauth'
require 'multi_json'

module OmniAuth
  module Strategies
    class Trello < OmniAuth::Strategies::OAuth
      option :name, 'trello'

      option :client_options, {
        :authorize_path => '/1/OAuthAuthorizeToken',
        :request_token_path => '/1/OAuthGetRequestToken',
        :access_token_path => '/1/OAuthGetAccessToken',
        :site => 'https://trello.com'
      }

      uid do
        raw_info['id']
      end

      info do
        {
          :nickname => raw_info['username'],
          :name => raw_info['fullName'],
          :email => raw_info['email'],
          :description => raw_info['description'],
          :urls => {
            'Website' => raw_info['url'],
            'Trello' => 'http://trello.com/' + raw_info['username']
          }
        }
      end

      def request_phase
        options[:authorize_params] = {
          :scope => options["scope"],
          :name => options["name"]
        }
        super
       end

      extra do
        {
          :raw_info => raw_info
        }
      end

      def raw_info
        @raw_info ||= MultiJson.load(access_token.get('/1/members/me').body)
      rescue ::Errno::ETIMEDOUT
        raise ::Timeout::Error
      end
    end
  end
end
