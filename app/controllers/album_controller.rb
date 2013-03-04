class AlbumController < ApplicationController

    def index
        if !session[:access_token]
           redirect_to :controller => 'sessions', :action => 'connect'
        end

        pmocampo = "30792403"
        client = Instagram.client(:access_token => session[:access_token])
        @user = client.user(pmocampo)
        @recent_media_items = client.user_recent_media(pmocampo)
    end

end
