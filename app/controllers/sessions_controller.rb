class SessionsController < Devise::SessionsController
  layout 'login'
  private
  def respond_to_on_destroy
    redirect_to new_admin_session_path
  end
end
