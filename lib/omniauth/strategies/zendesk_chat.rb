require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class ZendeskChat < OmniAuth::Strategies::OAuth2
      option :name, 'zendesk_chat'

      args %i[client_id client_secret]

      option :client_options,
             authorize_url: 'https://www.zopim.com/oauth2/authorizations/new',
             token_url: 'https://www.zopim.com/oauth2/token'
    end
  end
end

OmniAuth.config.add_camelization 'zendesk_chat', 'ZendeskChat'
