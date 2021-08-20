class ConfirmationsController < Devise::ConfirmationsController

  def after_confirmation_path_for(resource_name, resource)
     sign_in(resource)
     if params[:redirect_url].present?
     params[:redirect_url]
   else
      root_path
   end
 end



end
