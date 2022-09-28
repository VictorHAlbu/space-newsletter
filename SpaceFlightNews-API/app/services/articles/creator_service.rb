
class Articles::CreatorService < ApplicationService
  def call
    article = Article.create!(@params)
    [article, addresses(article)]
  end

  private

  def initialize(args)
    @params = args.dig(:article_params)
    @launches_attributes = @params[:launches_attributes].try(:values) || []
  end

  def addresses(article)
    @launches_attributes.map do |launches_attributes|
                            address = article.launches.build(address_attibutes)
                            address.valid?
                            address
                          end
  end

end