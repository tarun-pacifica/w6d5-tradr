class SessionController < ApplicationController
  def index
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to(users_path)
      respond_to do |format|
      format.js {render :create}
    else
      redirect_to(login_path)
    end
  end

  def new
  end

  def create
    user = User.where(:email => params[:email]).first
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to(users_path)
    else
      redirect_to(login_path)
    end
  end
      def destroy
        session[:user_id] = nil
        redirect_to(root_path)
      end
end