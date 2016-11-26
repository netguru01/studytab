class DashboardController < BaseController

  layout :get_current_user_layout

  def index
    render "#{current_user_profile_type}"
  end

  private

  def get_current_user_layout
    user_layouts = user_layouts_as_hash
    user_layouts[current_user_profile_type.to_sym]
  end

  def user_layouts_as_hash
    {
      admin_profile: 'admin_dashboard',
      student_profile: 'student_dashboard',
      employer_profile: 'employer_dashboard'
    }
  end

end