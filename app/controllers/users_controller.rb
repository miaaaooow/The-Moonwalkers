# -*- encoding : utf-8 -*-

class UsersController < ApplicationController
  def index
    @users = User.page params[:page]
    #@users = User.paginate(:all, :page => params[:page])
  end

  # The coolest action ever :D
  def moonwalkers
    @users = User.all.select { |user| user.moonwalker? }
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  # registration
  def create
    @user = User.new(params[:user])

    if @user.save
      redirect_to root_url, notice: "Регистрирахте потребител успешно."
    else
      render "new"
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params[:user])
      redirect_to users_path, notice: "Профилът бе обновен успешно." 
    else
      render "edit" 
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path, notice: "Потребителят бе изтрит успешно"
  end
end
