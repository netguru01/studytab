class AdminController < BaseController

  layout 'admin_dashboard'

  before_action :require_admin_authorization!
  
end