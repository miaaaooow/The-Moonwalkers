# encoding: UTF-8

class UsersController < ApplicationController
  # GET /users
  def index
    @users = User.page params[:page]
  end

  def moonwalkers
    @users = User.page params[:page]
    @users = @users.select { |user| user.moonwalker? }
  end

  # GET /users/1
  def show
    @user = User.find(params[:id])
  end

  # show a moonwalker
  def moonwalker
    @user = User.find(params[:id])
  end

  # GET /users/new
  def register
    @user = User.new
    if session[:register_moonwalker]
      @mw_user = MWUser.new
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  def create
    @user = User.new(params[:user])

    if @user.save
      redirect_to users_path, notice: 'Регистрирахте потребител успешно.' 
    else
      render action: "new"
    end
  end

  # PUT /users/1
  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params[:user])
      redirect_to users_path, notice: 'Профилът бе обновен успешно.' 
    else
      render action: "edit" 
    end
  end

  # DELETE /users/1
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path, notice: 'Потребителят бе изтрит успешно'
  end
end
