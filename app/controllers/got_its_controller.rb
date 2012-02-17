class GotItsController < ApplicationController
  def create
    @got_it = GotIt.new :user_id => params[:user_id],
                        :dashboard_entry_id => params[:dashboard_entry_id]
    if @got_it.save
      redirect_to dashboard_entries_path, :notice => "I got this!"
    else
      flash.now.alert = "Didn't get it..."
      redirect_to dashboard_entries_path
    end
  end
end
