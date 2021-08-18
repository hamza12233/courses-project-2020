class ConfirmationsController < Devise::ConfirmationsController

  def show
    user_session_path
  end

end
