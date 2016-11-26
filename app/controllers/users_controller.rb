class UsersController < AdminController

  def new
    @user = User.new
    @program = Program.find(params[:program_id])
    @profile = params[:profile]
    render "#{@profile}"
  end

  def create
    binding.pry
    user_type = params[:user][:user_type]
    use_case = RegisterUser.call(user_type: user_type, params: user_params)

    if use_case.success?

      redirect_to ''
    else


    end
  end

  private

  def user_params
    params.require(:user).permit(
      :email
    )
  end

end