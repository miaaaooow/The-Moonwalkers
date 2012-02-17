# -*- encoding : utf-8 -*-

class DashboardEntriesController < ApplicationController
  def index
    @dashboard_entries = DashboardEntry.page params[:page]
    @got_its = Hash.new

    @dashboard_entries.each do |entry|
      user_ids = entry.got_its.map { |got_it| got_it.user_id }
      @got_its[entry.id] = user_ids.map { |user_id| user_display_name(user_id) }
    end
  end

  def new
    @dashboard_entry = DashboardEntry.new
  end

  def edit
    @dashboard_entry = DashboardEntry.find params[:id]
  end

  def create
    @dashboard_entry = DashboardEntry.new params[:dashboard_entry]
    @dashboard_entry.user = current_user

    if @dashboard_entry.save
      redirect_to dashboard_entries_path, notice: 'Новината бе създадена успешно.' 
    else
      render "new"
    end
  end

  def update
    @dashboard_entry = DashboardEntry.find params[:id]

    if @dashboard_entry.update_attributes params[:dashboard_entry]
      redirect_to dashboard_entries_path, notice: 'Новината бе обновена успешно.' 
    else
      render "edit" 
    end
  end
end
