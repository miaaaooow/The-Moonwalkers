# -*- encoding : utf-8 -*-

class DashboardEntriesController < ApplicationController
  def index
    @dashboard_entries = DashboardEntry.page params[:page]
  end

  def show
    @dashboard_entry = DashboardEntry.find(params[:id])
  end

  def new
    @dashboard_entry = DashboardEntry.new
  end

  def edit
    @dashboard_entry = DashboardEntry.find(params[:id])
  end

  def create
    @dashboard_entry = DashboardEntry.new(params[:dashboard_entry])

    if @dashboard_entry.save
      redirect_to dashboard_entries_path, notice: 'Новината бе създадена успешно.' 
    else
      render "new"
    end
  end

  def update
    @dashboard_entry = DashboardEntry.find(params[:id])

    if @dashboard_entry.update_attributes(params[:dashboard_entry])
      redirect_to dashboard_entries_path, notice: 'Новината бе обновена успешно.' 
    else
      render "edit" 
    end
  end

  def destroy
    @dashboard_entry = DashboardEntry.find(params[:id])
    @dashboard_entry.destroy

    redirect_to dashboard_entries_path, notice: 'Новината бе изтрита успешно.'
  end
end
