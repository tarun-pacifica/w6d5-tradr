class UsersController < ApplicationController
    def new
      @user = User.new
      # respond_to do |format|
      #   format.html { redirect_to(users_path) }
      #   format.js { render :new }
      # end
    end

    def create
      user = User.create(params[:user])
      session[:user_id] = user.id
      @users = User.order(:email)
      # what does line 14 do?
      respond_to do |format|
      format.js {render :create}
    end
  end

    def index
      @users = User.order(:email)
    end
end