class CreateProgram

  include Interactor

  def call
    context[:program] = Program.new(context.params)
    if context.program.save
      true
    else
      context.fail!
    end
  end

end
