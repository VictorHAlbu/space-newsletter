class ArticlesController < ApplicationController
  before_action :set_article, only: %i[ show update destroy ]

  def index
    @articles = Article.all

    render json: @articles
  end

  def show
    render json: @article
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      render json: @article, status: :created, location: @article
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  def update
    if @article.update(article_params)
      render json: @article
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @article.destroy
  end

  private

  def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      launches_attributes = %i[id provider]
      events_attributes = %i[id provider]

      params.require(:article)
      .permit(:featured, :title, :url, :imageUrl, :newsSite, :summary, 
        :publishedAt, launches_attributes: launches_attributes, events_attributes: events_attributes )
    end
end
