# encoding: UTF-8

class NoveltiesController < ApplicationController
  # GET /novelties
  # GET /novelties.json
  def index
    @novelties = Novelty.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @novelties }
    end
  end

  # GET /novelties/1
  # GET /novelties/1.json
  def show
    @novelty = Novelty.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @novelty }
    end
  end

  # GET /novelties/new
  # GET /novelties/new.json
  def new
    @novelty = Novelty.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @novelty }
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
        format.json { render json: @novelty, status: :created, location: @novelty }
      else
        format.html { render action: "new" }
        format.json { render json: @novelty.errors, status: :unprocessable_entity }
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
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @novelty.errors, status: :unprocessable_entity }
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
      format.json { head :no_content }
    end
  end
end
