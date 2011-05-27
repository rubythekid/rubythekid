class HomeController < ApplicationController
  def index
     @font_page = Article.where(:font_page => true,:publish =>true)
  end
end
