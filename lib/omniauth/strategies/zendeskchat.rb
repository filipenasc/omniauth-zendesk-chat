require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class ZendeskChat < OmniAuth::Strategies::OAuth2
      args %i[client_id client_secret]

      option :client_options,
             authorize_url: 'https://www.zopim.com/oauth2/authorizations/new',
             site: 'https://www.zopim.com',
             token_url: 'oauth2/token'
    end

    def token_params
      options.token_params.merge(redirect_uri: callback_url)
    end
  end
end

OmniAuth.config.add_camelization 'zendeskchat', 'ZendeskChat'
