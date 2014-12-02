class Basic
  CONSTANT_NAME = 'hello'
  @@class_variable='ciao'

  def initialize
    @instance_variable = 'ciao ciao'
  end

  def hello
    local_variable = @instance_variable
    local_variable
  end

  def global_variable_process_id
    $$
  end

end