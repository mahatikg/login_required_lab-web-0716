class SessionsController < ApplicationController

  def new
      render :login  #create login view for sessions
  end

  def create

    case
    when params[:name]
          if !params[:name].empty?
              session[:name] = params[:name]
              redirect_to '/welcome'
          else
            redirect_to '/sessions/new'
          end
      else
        #flash[:notice] = "Please Sign into a Session"
        redirect_to '/sessions/new'
      end

    end



    def welcome
      @username = current_user
    end



    def destroy
      if session[:name] && session[:name] != nil
        session[:name] = nil
      end
      redirect_to 'sessions/login'

    end




end
