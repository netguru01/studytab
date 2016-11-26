class UpdateProgram

  include Interactor

  def call
    program = context.program
    if program.update(context.params)
      true
    else
      context.fail!
    end
  end

end
