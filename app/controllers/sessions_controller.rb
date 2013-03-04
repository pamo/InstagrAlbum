require 'instagram'

class SessionsController < ApplicationController
    def connect
        puts "Authorize with Instagram"
        redirect_to Instagram.authorize_url(:redirect_uri => CALLBACK_URL)
    end

    def callback
        puts "Waiting for callback"
        response = Instagram.get_access_token(params[:code], :redirect_uri => CALLBACK_URL)
        session[:access_token] = response.access_token
        redirect_to :controller => 'album', :action => 'index'
    end

end
