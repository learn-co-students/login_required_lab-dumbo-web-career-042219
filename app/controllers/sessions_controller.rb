class SessionsController < ApplicationController



  def new
  end

  def create
   if params[:name] == nil || params[:name].empty?
     redirect_to new_session_path
   else
     session[:name] = params[:name]
     redirect_to secrets_path
   end
  end

  # def create
  #   session[:name] = params[:name]
  #   unless current_user.nil? || current_user.empty?
  #     redirect_to secrets_path
  #   else
  #     redirect_to new_session_path
  #   end
  # end

  def destroy
   session.delete :name
   redirect_to new_session_path
  end
end
