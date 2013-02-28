require "instagram"

Instagram.configure do |config|
    config_file = Rails.root.join 'config', 'api.yml'
    api = YAML.load_file(config_file)
    config.client_id = api['client_id']
    config.client_secret = api['client_secret']
end

CALLBACK_URL = "http://localhost:3000/session/callback"

