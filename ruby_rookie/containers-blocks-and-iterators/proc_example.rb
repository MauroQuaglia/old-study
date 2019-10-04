class ProcExample

  def initialize(&action)
    @action = action # viene memorizzato in un oggetto Proc.
  end

  def execute(value)
    @action.call value
  end

  def get_block
    @action
  end

end