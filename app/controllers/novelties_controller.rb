# -*- encoding : utf-8 -*-

class NoveltiesController < ApplicationController
  # GET /novelties
  def index
    @novelties = Novelty.page params[:page]
  end

  # GET /novelties/new
  def new
    @novelty = Novelty.new
  end

  # GET /novelties/1/edit
  def edit
    @novelty = Novelty.find(params[:id])
  end

  # POST /novelties
  def create
    @novelty = Novelty.new(params[:novelty])

    if @novelty.save
      redirect_to novelties_path, notice: 'Новината бе създадена успешно.' 
    else
      render "new"
    end
  end

  # PUT /novelties/1
  def update
    @novelty = Novelty.find(params[:id])

    if @novelty.update_attributes(params[:novelty])
      redirect_to novelties_path, notice: 'Новината бе обновена успешно.' 
    else
      render "edit" 
    end
  end

  # DELETE /novelties/1
  def destroy
    @novelty = Novelty.find(params[:id])
    @novelty.destroy

    redirect_to novelties_path, notice: 'Новината бе изтрита успешно.'
  end
end
