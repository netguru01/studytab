module BaseHelper

  def current_user_name
    current_user.profile.first_name.capitalize + " " + current_user.profile.last_name.capitalize
  end

end
