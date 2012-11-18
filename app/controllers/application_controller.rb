class ApplicationController < ActionController::Base
  protect_from_forgery

  def check_auth
    unless logged_in?
      flash[:error]="WArniong"
      redirect_to new_session_path
    end
  end

  def admin_permission
    unless current_user.admin?
      flash[:error]="Warning"
      redirect_to root_path
    end
  end
end
