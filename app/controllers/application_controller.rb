class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user, :menus, :lasted_news
  
  private
  
  def require_login
    unless current_user
      redirect_to :login, :notice => "You must be logged in to access this section"
    end
  end

  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end
  
  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end
 
  def menus
    Menu.all
  end

  def lasted_news
    Article.order("created_at DESC").where(:publish => true).first(10)
  end
  
end
