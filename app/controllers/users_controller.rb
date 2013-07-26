class UsersController < ApplicationController
    def new
      @user = User.new
      # respond_to do |format|
      #   format.html { redirect_to(users_path) }
      #   format.js { render :new }
      # end
    end

    def create
      User.create(params[:User])
      @users = User.order(:email)

    end

    def index
      @users = User.order(:email)
    end
  end