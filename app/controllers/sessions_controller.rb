# -*- encoding : utf-8 -*-
#encoding UTF-8

class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(params[:username], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to novelties_path, :notice => "Влязохте успешно :)"
    else
      flash.now.alert = "Невалидни данни, пробвайте пак."
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to novelties_path, :notice => "Don't Walk Away! ;-)"
  end
end
