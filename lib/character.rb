class Character


    attr_reader :name, :salary, :actor

  def initialize(attributes)

      @name = attributes[:name]
      @actor = attributes[:actor]
      @salary = attributes[:salary]
  end

end
