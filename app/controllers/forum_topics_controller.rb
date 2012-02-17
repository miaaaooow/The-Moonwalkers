# -*- encoding : utf-8 -*-

class ForumTopicsController < ApplicationController
  def index
    @forum_topics = ForumTopic.page params[:page]
  end

  def show
    @forum_topic = ForumTopic.find(params[:id])
  end

  def new
    @forum_topic = ForumTopic.new
  end

  def edit
    @forum_topic = ForumTopic.find(params[:id])
  end

  def create
    @forum_topic = ForumTopic.new(params[:forum_topic])

    if @forum_topic.save
      redirect_to forum_topics_path, notice: 'Темата бе създадена успешно.' 
    else
      render "new"
    end
  end

  def update
    @forum_topic = ForumTopic.find(params[:id])

    if @forum_topic.update_attributes(params[:forum_topic])
      redirect_to forum_topics_path, notice: 'Темата бе обновена успешно.' 
    else
      render "edit" 
    end
  end

  def destroy
    @forum_topic = ForumTopic.find(params[:id])
    @forum_topic.destroy

    redirect_to forum_topics_path, notice: 'Темата бе изтрита успешно'
  end
end
