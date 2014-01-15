class ArticlesController < ApplicationController

	def index
		@articles = Article.all 
	end

	def show
		@artilce = Article.find(params[:id])
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
