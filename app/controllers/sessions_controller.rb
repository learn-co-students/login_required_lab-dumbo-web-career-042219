class SessionsController < ApplicationController
  def new
  end

  def create
  	session[:name] = params[:name]

  	unless current_user.nil? || current_user.empty?
  		redirect_to secrets_path
  	else
  		redirect_to new_session_path
  	end
  end

  def destroy
  	session.delete :name unless session[:name].nil?
  end
end
 