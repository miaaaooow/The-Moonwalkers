# -*- encoding : utf-8 -*-

class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_time_zone

  helper_method :current_user 
  helper_method :logged_in?
  helper_method :admin?
  helper_method :moonwalker?

  private 
  
  def set_time_zone
    Time.zone = "Sofia"
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    current_user != nil
  end

  def admin?
    current_user and current_user.admin
  end

  def moonwalker?
    current_user and (current_user.moonwalker or current_user.admin)
  end

  def deny_access
    redirect_to novelties_path, :flash => { :error => "Нямате достъп." }
  end

  def require_current_user
    deny_access unless (current_user[:id] == params[:id])
  end
  
  def require_moonwalker
    deny_access unless moonwalker?
  end 

  def require_admin
    deny_access unless admin?
  end
end
