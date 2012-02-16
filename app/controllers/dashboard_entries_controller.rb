# -*- encoding : utf-8 -*-

class DashboardEntriesController < ApplicationController
  def index
    @dashboard_entries = DashboardEntry.page params[:page]

    @got_its = Hash.new
    @dashboard_entries.each do |entry|
      @got_its[entry.id] = GotIts.find_by_dashboard_entry_id(entry.id)
    end
  end

  def new
    @dashboard_entry = DashboardEntry.new
  end

  def edit
    @dashboard_entry = DashboardEntry.find(params[:id])
  end

  def create
    @dashboard_entry = DashboardEntry.new(params[:dashboard_entry])
    @dashboard_entry.user = current_user

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
    
    # delete corresponding GotIts.
    Got_its.find_by_dashboard_entry_id(@dashboard_entry.id).each do |got_it|
      got_it.destroy
    end

    redirect_to dashboard_entries_path, notice: 'Новината бе изтрита успешно.'
  end
end
