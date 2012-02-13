#encoding UTF-8

class MWUsersController < ApplicationController
  # GET /m_w_users
  def index
    @m_w_users = MWUser.all.select{ |user| user.moonwalker == false }

    respond_to do |format|
      format.html 
    end
  end

  def moonwalkers
    @m_w_users = MWUser.all.select{ |user| user.moonwalker == true }
  
    respond_to do |format|
      format.html 
    end
  end

  # GET /m_w_users/1
  def show
    @m_w_user = MWUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /m_w_users/new
  def new
    @m_w_user = MWUser.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /m_w_users/1/edit
  def edit
    @m_w_user = MWUser.find(params[:id])
  end

  # POST /m_w_users
  def create
    @m_w_user = MWUser.new(params[:m_w_user])

    respond_to do |format|
      if @m_w_user.save
        format.html { redirect_to @m_w_user, notice: 'M w user was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /m_w_users/1
  def update
    @m_w_user = MWUser.find(params[:id])

    respond_to do |format|
      if @m_w_user.update_attributes(params[:m_w_user])
        format.html { redirect_to @m_w_user, notice: 'M w user was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /m_w_users/1
  def destroy
    @m_w_user = MWUser.find(params[:id])
    @m_w_user.destroy

    respond_to do |format|
      format.html { redirect_to m_w_users_url }
    end
  end
end
