require "instagram"
require "net/http"

module InstaPoller
    def self.connect
        CALLBACK_URL = http://localhost:3000/callback
       
        api_config = Rails.root.join 'config', 'api.yml'
        yml = YAML.load_file(api_config)
    
        Instagram.configure do |config|
            config.client_id = yml['client_id']
            config.client_secret = yml['client_secret']
        end
    
        redirect Instagram.authorize_url(:redirect_uri => CALLBACK_URL)
    end

    def self.get_feed(user)
        client = Instagram.client(:access_token => session[:access_token]
        @user = client.user
        @recent_media_items = client.user_recent_media
    end

end

