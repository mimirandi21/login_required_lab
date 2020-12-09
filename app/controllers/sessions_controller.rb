class SessionsController < ApplicationController
    
    
    def new
    end

    def create
        if params[:name] != nil && params[:name] != ''
            session[:name] = params[:name]
            redirect_to '/show'
        else
            redirect_to '/login'
        end
    end

    def show
        
    end

    def destroy
        session.delete :name
        render :new
    end
end