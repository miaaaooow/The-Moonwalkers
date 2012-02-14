# encoding: UTF-8

class ForumTopicsController < ApplicationController
  # GET /forum_topics
  def index
    @forum_topics = ForumTopic.page params[:page]
  end

  # GET /forum_topics/1
  def show
    @forum_topic = ForumTopic.find(params[:id])
  end

  # GET /forum_topics/new
  def new
    @forum_topic = ForumTopic.new
  end

  # GET /forum_topics/1/edit
  def edit
    @forum_topic = ForumTopic.find(params[:id])
  end

  # POST /forum_topics
  def create
    @forum_topic = ForumTopic.new(params[:forum_topic])

    if @forum_topic.save
      redirect_to forum_topics_path, notice: 'Темата бе създадена успешно.' 
    else
      render action: "new"
    end
  end

  # PUT /forum_topics/1
  def update
    @forum_topic = ForumTopic.find(params[:id])

    if @forum_topic.update_attributes(params[:forum_topic])
      redirect_to forum_topics_path, notice: 'Темата бе обновена успешно.' 
    else
      render action: "edit" 
    end
  end

  # DELETE /forum_topics/1
  def destroy
    @forum_topic = ForumTopic.find(params[:id])
    @forum_topic.destroy

    redirect_to forum_topics_path, notice: 'Темата бе изтрита успешно'
  end
end
