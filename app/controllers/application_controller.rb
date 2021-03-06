class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :require_login, :only => :hello


  def hello
    render :hello
  end


  private

  def require_login
    redirect_to  '/login' if session[:name].nil?
  end

end
