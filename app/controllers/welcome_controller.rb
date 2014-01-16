class WelcomeController < ApplicationController
  def index
  	@recent = Article.order(created_at: :asc).limit(5)
  end
end
