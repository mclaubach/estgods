class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
    def current_dotauser
      return nil unless session[:dotauser_id]
      @current_dotauser ||= Dotauser.find_by(id: session[:dotauser_id])
    end

    helper_method :current_dotauser
end
