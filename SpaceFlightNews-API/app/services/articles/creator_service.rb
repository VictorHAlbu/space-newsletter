class Articles::CreatorService < ApplicationService
  def call
    article = Article.create!(@params)
  end

  private

  def initialize(args)
    @params = args.dig(:article_params)
  end

end