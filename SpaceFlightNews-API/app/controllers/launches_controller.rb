class LaunchesController < ApplicationController
	before_action :set_article
	before_action :set_launch, only: [:show, :edit, :update, :destroy]

  def index
    @launches = @article.lauches
    render json: @launches
  end


  def create
		@launch = @article.launches.build(launch_params)
		if @launch.save
			render status: :created, json: @launch
		else
      render json: @launch.errors, status: :unprocessable_entity
		end
  end
  

  private

  def launch_params
    params.require(:launch).permit(:article_id, :provider)
  end

  def set_article
    @article = Article.find(params[:article_id])
  end

  def set_launch
    @launch = Launch.find(params[:id])
  end

end
