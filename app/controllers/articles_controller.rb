class ArticlesController < ApplicationController

	def index
		@articles = Article.order(updated_at: :desc).limit(25)
	end

	def show
		@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		@article.save
		redirect_to root_path
	end

private

	def article_params
		params.require(:artilce).permit!
	end

end
