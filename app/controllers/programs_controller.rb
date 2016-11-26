class ProgramsController < AdminController

  def new
    @program = Program.new
  end

  def create
    use_case = CreateProgram.call(params: program_params)
    if use_case.success?

      redirect_to programs_url, flash: {success: 'You successfully created program'}
    else
      @program = use_case.program
      render :new
    end
  end

  def show
    @program = Program.find(params[:id])
  end

  def edit
    @program = Program.find(params[:id])
  end

  def update
    @program = Program.find(params[:id])
    use_case = UpdateProgram.call(program: @program, params: program_params)

    if use_case.success?

      redirect_to programs_url, flash: {success: 'You successfully update program'}
    else
      render :edit
    end
  end

  def index
    @programs = Program.all
  end

  def destroy
    @program = Program.find(params[:id])
    DestroyProgram.call(program: @program)

    redirect_to programs_url, flash: {success: 'You successfully destroyed program'}
  end

  private

  def program_params
    params.require(:program).permit(
      :title,
      :start_date,
      :end_date
    )
  end

end