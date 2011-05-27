class AdministratorController < ApplicationController
  layout "administrator"
  before_filter :require_login
  def index
  end

end
