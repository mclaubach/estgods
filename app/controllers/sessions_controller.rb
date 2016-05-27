class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token, only: :create

  def create
    begin
      @dotauser = Dotauser.from_omniauth request.env['omniauth.auth']
    rescue
      flash[:error] = "Can't authorize you...gg"
    else
      @dotauser.load_matches!(7)
      session[:dotauser_id] = @dotauser.id
      flash[:success] = "Welcome, #{@dotauser.nickname}!"
    end
    redirect_to matches_path
  end

  def destroy
  if current_dotauser
    session.delete(:dotauser_id)
    flash[:success] = "Goodbye!"
  end
  redirect_to root_path
end

end