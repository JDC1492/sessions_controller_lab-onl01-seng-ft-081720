class SessionsController < ApplicationController
  def new

  end

  def create
    if params[:name].nil? 
      redirect_to '/login'
    elsif params[:name] == ""
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if session[:name].nil? 
      session
    elsif session[:name]
      session.delete :name
  end
end

  
end
