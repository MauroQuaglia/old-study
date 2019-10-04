class MyClass

  # public... default
  def method1
  end

  protected
  def method2
  end

  private
  def method3
  end

  public
  def method4
  end

end

# un'alternativa
class MyClass2

  def method1
  end

  def method2
  end

  def method3
  end

  def method4
  end

  public    :method1, :method4
  protected :method2
  private   :method3

end