class ProjectList

  def initialize
    @projects = []
  end

  def projects=(list)
   @projects = list.map(&:upcase)
  end

  def [](offset)
    @projects[offset]
  end

end