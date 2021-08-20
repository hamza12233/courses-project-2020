class ConfirmationsController < Devise::ConfirmationsController

  def after_inactive_sign_up_path_for(resource_or_scope)
     root_path
  end

end
