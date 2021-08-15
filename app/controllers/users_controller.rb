class UsersController < ApplicationController




  private

  def user_params
    param.require(:user).permit(*User::ATTRIBUTE_WHITELIST)
  end
end
