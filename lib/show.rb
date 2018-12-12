class Show

      attr_reader :name, :creator, :characters
    def initialize(name, creator, characters)
      @name = name
      @creator = creator
      @characters = []
      @salary = 0

    end

    def add_characters(characters)
      @characters << characters
    end

    def total_salary
      @characters.each do |character_salary|
      @salary << character_salary[2]
      end
    end


end
#
