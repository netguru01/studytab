class DestroyProgram
  include Interactor

  def call
    program = context.program
    program.destroy
  end
end
