class EventsController < ApplicationController
	before_action :set_article
	before_action :set_event, only: [:show, :edit, :update, :destroy]


  def create
		@event = @article.events.build(event_params)
		if @event.save
			render status: :created, json: @event
		else
      render json: @event.errors, status: :unprocessable_entity
		end
  end


  private

  def event_params
    params.require(:event).permit(:article_id, :provider)
  end

  def set_article
    @article = Article.find(params[:article_id])
  end

  def set_event
    @event = Event.find(params[:id])
  end

end
