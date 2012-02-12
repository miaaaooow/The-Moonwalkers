# encoding: UTF-8

class NoveltiesController < ApplicationController
  # GET /novelties
  def index
    @novelties = Novelty.page params[:page]

    respond_to do |format|
      format.html
    end
  end

  # GET /novelties/1
  def show
    @novelty = Novelty.find(params[:id])

    respond_to do |format|
      format.html 
    end
  end

  # GET /novelties/new
  # GET /novelties/new.json
  def new
    @novelty = Novelty.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /novelties/1/edit
  def edit
    @novelty = Novelty.find(params[:id])
  end

  # POST /novelties
  # POST /novelties.json
  def create
    @novelty = Novelty.new(params[:novelty])

    respond_to do |format|
      if @novelty.save
        format.html { redirect_to @novelty, notice: 'Новината бе създадена успешно.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /novelties/1
  # PUT /novelties/1.json
  def update
    @novelty = Novelty.find(params[:id])

    respond_to do |format|
      if @novelty.update_attributes(params[:novelty])
        format.html { redirect_to @novelty, notice: 'Новината бе обновена успешно.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /novelties/1
  # DELETE /novelties/1.json
  def destroy
    @novelty = Novelty.find(params[:id])
    @novelty.destroy

    respond_to do |format|
      format.html { redirect_to novelties_url }
    end
  end
end
