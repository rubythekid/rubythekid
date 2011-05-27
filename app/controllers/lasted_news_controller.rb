class LastedNewsController < ApplicationController
  def index
    @articles = Article.last
  end

end
