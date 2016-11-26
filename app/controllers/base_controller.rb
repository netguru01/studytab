class BaseController < ApplicationController

  before_action :authenticate_user!

  def current_user_profile_type
    current_user.profile_type.underscore
  end

  def require_admin_authorization!
    redirect_to root_url unless current_user.profile_type == 'AdminProfile'
  end

end