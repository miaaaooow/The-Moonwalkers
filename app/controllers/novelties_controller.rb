# -*- encoding : utf-8 -*-

class NoveltiesController < ApplicationController
  before_filter :require_moonwalker, :except => :index

  def index
    @novelties = Novelty.page params[:page]
  end

  def new
    @novelty = Novelty.new
  end

  def edit
    @novelty = Novelty.find params[:id]
  end

  def create
    @novelty = Novelty.new params[:novelty]
    @novelty.user = current_user
    
    if @novelty.save
      redirect_to novelties_path, notice: 'Новината бе създадена успешно.' 
    else
      render "new"
    end
  end

  def update
    @novelty = Novelty.find params[:id]

    if @novelty.update_attributes params[:novelty]
      redirect_to novelties_path, notice: 'Новината бе обновена успешно.' 
    else
      render "edit" 
    end
  end

  def destroy
    @novelty = Novelty.find params[:id]
    @novelty.destroy

    redirect_to novelties_path, notice: 'Новината бе изтрита успешно.'
  end
end
