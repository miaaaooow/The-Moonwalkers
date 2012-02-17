# -*- encoding : utf-8 -*-

class UsersController < ApplicationController
  # GET /users
  def index
    @users = User.page params[:page]
    #@users = User.paginate(:all, :page => params[:page])
  end

  # The coolest action ever :D
  def moonwalkers
    @users = User.all.select { |user| user.moonwalker? }
  end

  # GET /users/1
  def show
    @user = User.find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # registration
  def create
    @user = User.new(params[:user])

    if @user.save
      redirect_to root_url, notice: "Регистрирахте потребител успешно."
    else
      render "new"
    end
  end

  # PUT /users/1
  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params[:user])
      redirect_to users_path, notice: "Профилът бе обновен успешно." 
    else
      render "edit" 
    end
  end

  # DELETE /users/1
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path, notice: "Потребителят бе изтрит успешно"
  end
end
